import 'package:flutter/material.dart';

import '../const/programming_language.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/course_progress_indicator.dart';

class CourseScreen extends StatelessWidget {
  CourseScreen({Key? key}) : super(key: key);

  final List<ProgrammingLanguage> languages = [
    ProgrammingLanguage(
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/ISO_C%2B%2B_Logo.svg/800px-ISO_C%2B%2B_Logo.svg.png',
      'C++',
      10,
      'Easy',
      65
    ),
    ProgrammingLanguage(
      'https://s0.rbk.ru/v6_top_pics/media/img/1/60/756533742439601.jpg',
      'Java',
      10,
      'Easy',
      35
    ),
    ProgrammingLanguage(
      'https://www.pngitem.com/pimgs/m/480-4800518_file-dart-logo-dart-programming-language-logo-hd.png',
      'Dart',
      10,
      'Easy',
      10
    ),
    ProgrammingLanguage(
      'https://www.freecodecamp.org/news/content/images/2021/10/golang.png',
      'Go',
      10,
      'Easy',
      100
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          Text(
            'Continue',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 25),
          ListView.builder(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: languages.length,
            itemBuilder: (context, int index) {
              return CourseProgressIndicator(
                language : languages[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
