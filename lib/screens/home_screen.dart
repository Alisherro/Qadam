import 'package:flutter/material.dart';
import 'package:qadam/const/code_task.dart';
import 'package:qadam/widgets/code_tasks_view.dart';
import '../const/programming_language.dart';
import '../const/learning_section_class.dart';
import '../widgets/learning_section_widget.dart';
import '../widgets/rounded_news.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<ProgrammingLanguage> languages = [
    ProgrammingLanguage(
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/ISO_C%2B%2B_Logo.svg/800px-ISO_C%2B%2B_Logo.svg.png',
        'Python',
        14,
        'Easy',
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
        'Easy',
        35,
        Color(0xff6cc6cb),
        Color(0xffeae5c9), [
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
        'Easy',
        10,
        Color(0xff7dc387),
        Color(0xffdbe9ea), [
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
        'Easy',
        100,
        Color(0xffa18cd1),
        Color(0xfffbc2eb), [
      ProgrammingLanguageCourse(1, 'Введение', '30 min', false),
      ProgrammingLanguageCourse(2, 'Ввод и вывод данных', '60 min', false),
      ProgrammingLanguageCourse(3, 'Условный оператор', '60 min', false),
      ProgrammingLanguageCourse(4, 'Строки', '60 min', false),
      ProgrammingLanguageCourse(5, 'Циклы', '45 min', false),
    ]),
  ];

  final List<CodeTask> codeTasks = [
    CodeTask('a+b', 'Easy', true),
    CodeTask('Fibonacci', 'Hard', false),
    CodeTask('Revers', 'Hard', true),
    CodeTask('days', 'Easy', true),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 10),
      child: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Icon(Icons.menu), Icon(Icons.person)],
              ),
              SizedBox(height: 30),
              Text(
                "Hey Alex,",style: TextStyle(fontSize: 36),
              ),

              Text(
                "Find a course you want to learn",
                style: TextStyle(fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F7),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Search for anything",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFA0A5BD),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Курсы',
                style: TextStyle(fontSize: 24),
              ),
              Divider(
                thickness: 2,
              )
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
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
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Задачи',
                style: TextStyle(fontSize: 24),
              ),
              Divider(
                thickness: 2,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
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
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
