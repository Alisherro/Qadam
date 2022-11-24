import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qadam/const/tab_manager.dart';
import 'package:qadam/screens/home_screen.dart';
import '../const/programming_language.dart';
import '../widgets/bottom_nav_bar.dart';
import 'code_editor_screen.dart';
import 'course_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final List<ProgrammingLanguage> languages = [
    ProgrammingLanguage(
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/ISO_C%2B%2B_Logo.svg/800px-ISO_C%2B%2B_Logo.svg.png',
        'Python',
        14,
        'Easy',
        65,
        Colors.indigo,
        Colors.cyan,
        [
          ProgrammingLanguageCourse(1, 'Введение', '30 min', true),
          ProgrammingLanguageCourse(2, 'Ввод и вывод данных', '60 min', true),
          ProgrammingLanguageCourse(3, 'Условный оператор', '60 min', false),
          ProgrammingLanguageCourse(4, 'Строки', '60 min', false),
          ProgrammingLanguageCourse(5, 'Циклы', '45 min', false),
        ]
    ),
    ProgrammingLanguage(
        'https://s0.rbk.ru/v6_top_pics/media/img/1/60/756533742439601.jpg',
        'Java',
        7,
        'Easy',
        35,
        const Color(0xff6cc6cb),
        const Color(0xffeae5c9),
        [
          ProgrammingLanguageCourse(1, 'Введение', '30 min', false),
          ProgrammingLanguageCourse(2, 'Ввод и вывод данных', '60 min', false),
          ProgrammingLanguageCourse(3, 'Условный оператор', '60 min', false),
          ProgrammingLanguageCourse(4, 'Строки', '60 min', false),
          ProgrammingLanguageCourse(5, 'Циклы', '45 min', false),
        ]
    ),
    ProgrammingLanguage(
        'https://www.pngitem.com/pimgs/m/480-4800518_file-dart-logo-dart-programming-language-logo-hd.png',
        'Dart',
        9,
        'Easy',
        10,
        const Color(0xff7dc387),
        const Color(0xffdbe9ea),
        [
          ProgrammingLanguageCourse(1, 'Введение', '30 min', false),
          ProgrammingLanguageCourse(2, 'Ввод и вывод данных', '60 min', false),
          ProgrammingLanguageCourse(3, 'Условный оператор', '60 min', false),
          ProgrammingLanguageCourse(4, 'Строки', '60 min', false),
          ProgrammingLanguageCourse(5, 'Циклы', '45 min', false),
        ]
    ),
    ProgrammingLanguage(
        'https://www.freecodecamp.org/news/content/images/2021/10/golang.png',
        'Go',
        15,
        'Easy',
        100,
        const Color(0xffa18cd1),
        const Color(0xfffbc2eb),
        [
          ProgrammingLanguageCourse(1, 'Введение', '30 min', false),
          ProgrammingLanguageCourse(2, 'Ввод и вывод данных', '60 min', false),
          ProgrammingLanguageCourse(3, 'Условный оператор', '60 min', false),
          ProgrammingLanguageCourse(4, 'Строки', '60 min', false),
          ProgrammingLanguageCourse(5, 'Циклы', '45 min', false),
        ]
    ),
  ];

  static List<Widget> pages = [
    HomeScreen( ),
    CourseScreen(),
    const CodeEditorScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(
      builder: (context, tabManager, child) {
        return Scaffold(
          body: IndexedStack(index: tabManager.selectedTab, children: pages),
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
