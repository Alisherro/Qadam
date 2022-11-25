import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qadam/const/code_task.dart';
import 'package:qadam/widgets/code_tasks_view.dart';
import '../const/programming_language.dart';
import '../widgets/learning_section_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List locale = [
    {'name': 'Русский', 'locale': const Locale('ru', 'RU')},
    {'name': 'Қазақша', 'locale': const Locale('kz', 'KZ')},
  ];
  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: const Text('Выберите язык'),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Text(locale[index]['name']),
                        onTap: () {
                          updateLanguage(locale[index]['locale']);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.grey,
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }

  final List<ProgrammingLanguage> languages = [
    ProgrammingLanguage(
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/ISO_C%2B%2B_Logo.svg/800px-ISO_C%2B%2B_Logo.svg.png',
        'Python',
        5,
        'easy'.tr,
        65,
        Colors.indigo,
        Colors.cyan, [
      ProgrammingLanguageCourse(1, 'Введение', '30 min', true),
      ProgrammingLanguageCourse(2, 'Ввод и вывод данных', '60 min', true),
      ProgrammingLanguageCourse(3, 'Условный оператор', '60 min', false),
      ProgrammingLanguageCourse(4, 'Строки', '60 min', false),
      ProgrammingLanguageCourse(5, 'Циклы', '45 min', false),
    ]),
    ProgrammingLanguage(
        'https://s0.rbk.ru/v6_top_pics/media/img/1/60/756533742439601.jpg',
        'Java',
        7,
        'easy'.tr,
        35,
        const Color(0xff6cc6cb),
        const Color(0xffeae5c9), [
      ProgrammingLanguageCourse(1, 'Введение', '30 min', false),
      ProgrammingLanguageCourse(2, 'Ввод и вывод данных', '60 min', false),
      ProgrammingLanguageCourse(3, 'Условный оператор', '60 min', false),
      ProgrammingLanguageCourse(4, 'Строки', '60 min', false),
      ProgrammingLanguageCourse(5, 'Циклы', '45 min', false),
    ]),
    ProgrammingLanguage(
        'https://www.pngitem.com/pimgs/m/480-4800518_file-dart-logo-dart-programming-language-logo-hd.png',
        'Dart',
        9,
        'easy'.tr,
        10,
        const Color(0xff7dc387),
        const Color(0xffdbe9ea), [
      ProgrammingLanguageCourse(1, 'Введение', '30 min', false),
      ProgrammingLanguageCourse(2, 'Ввод и вывод данных', '60 min', false),
      ProgrammingLanguageCourse(3, 'Условный оператор', '60 min', false),
      ProgrammingLanguageCourse(4, 'Строки', '60 min', false),
      ProgrammingLanguageCourse(5, 'Циклы', '45 min', false),
    ]),
    ProgrammingLanguage(
        'https://www.freecodecamp.org/news/content/images/2021/10/golang.png',
        'Go',
        15,
        'easy'.tr,
        100,
        const Color(0xffa18cd1),
        const Color(0xfffbc2eb), [
      ProgrammingLanguageCourse(1, 'Введение', '30 min', false),
      ProgrammingLanguageCourse(2, 'Ввод и вывод данных', '60 min', false),
      ProgrammingLanguageCourse(3, 'Условный оператор', '60 min', false),
      ProgrammingLanguageCourse(4, 'Строки', '60 min', false),
      ProgrammingLanguageCourse(5, 'Циклы', '45 min', false),
    ]),
  ];

  final List<CodeTask> codeTasks = [
    CodeTask('А+В', 'easy'.tr, true),
    CodeTask('Фиббоначи', 'hard'.tr, false),
    CodeTask('task3'.tr, 'hard'.tr, true),
    CodeTask('Минимум', 'easy'.tr, true),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 10),
      child: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            height: MediaQuery.of(context).size.height/2.6,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              buildLanguageDialog(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                            
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5.0),
                              child: Text('changelang'.tr, style: const TextStyle(fontSize: 16)),
                            ),
                          ),
                          const Icon(Icons.person)
                        ],
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'greeting'.tr,
                        style: const TextStyle(fontSize: 36),
                      ),
                      Text(
                        'greeting2'.tr,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F7),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'search'.tr,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFFA0A5BD),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'course'.tr,
                style: const TextStyle(fontSize: 24),
              ),
              const Divider(
                thickness: 2,
              )
            ],
          ),
          const SizedBox(height: 10),
          Container(
            
            height: MediaQuery.of(context).size.height/2.25,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: GridView.builder(
                      primary: false,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) =>
                          LearningSectionWidget(programmingLanguage: languages[index]),
                      itemCount: languages.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'tasks'.tr,
                style: const TextStyle(fontSize: 24),
              ),
              const Divider(
                thickness: 2,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/1.8,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: ListView.separated(
                      primary: false,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => CodeTaskWidget(
                        codeTask: codeTasks[index],
                      ),
                      itemCount: codeTasks.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
