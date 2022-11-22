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
      10,
      'Easy',
      65,
      Colors.indigo,
      Colors.cyan,
    ),
    ProgrammingLanguage(
      'https://s0.rbk.ru/v6_top_pics/media/img/1/60/756533742439601.jpg',
      'Java',
      10,
      'Easy',
      35,
      Color(0xff6cc6cb),
      Color(0xffeae5c9),
    ),
    ProgrammingLanguage(
      'https://www.pngitem.com/pimgs/m/480-4800518_file-dart-logo-dart-programming-language-logo-hd.png',
      'Dart',
      10,
      'Easy',
      10,
      Color(0xff7dc387),
      Color(0xffdbe9ea),
    ),
    ProgrammingLanguage(
      'https://www.freecodecamp.org/news/content/images/2021/10/golang.png',
      'Go',
      10,
      'Easy',
      100,
      Color(0xff7dc387),
      Color(0xffdbe9ea),
    ),
  ];

  final List<CodeTask> codeTasks = [
    CodeTask('a+b', 'Easy'),
    CodeTask('Fibonacci', 'Hard'),
    CodeTask('Revers', 'Hard'),
    CodeTask('days', 'Easy'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 10),
      child: ListView(
        children: [
          Text(
            'Hello, Alisher!',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 120,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int index) {
                return CircleStory(
                  language: languages[index],
                );
              },
              itemCount: languages.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 12);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) =>
                  LearningSectionWidget(data: languages[index]),
              itemCount: languages.length,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Test urself',
            style: Theme.of(context).textTheme.headline2,
          ),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: codeTasks.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int index) {
                return CodeTaskWidget(
                  codeTask: codeTasks[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
