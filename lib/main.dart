import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qadam/const/qadam_theme.dart';
import 'package:qadam/screens/code_editor_screen.dart';
import 'package:qadam/screens/learning_topic_1.dart';
import 'package:qadam/screens/learning_topic_2.dart';
import 'package:qadam/screens/learning_topic_3.dart';
import 'package:qadam/screens/login_screen.dart';
import 'package:qadam/screens/main_screen.dart';
import 'package:qadam/screens/python_course_screen.dart';
import 'package:qadam/screens/quiz.dart';
import 'const/tab_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool _iconBool = false;
IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _lightTheme = QadamTheme.light();
ThemeData _darkTheme = QadamTheme.dark();

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TabManager>(
      create: (context) => TabManager(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginScreen(),
          '/main': (context) => MainScreen(),
          '/python': (context) => const PythonCourseScreen(),
          '/python/1': (context) => const PythonTopic1(),
          '/python/2': (context) => const PythonTopic2(),
          '/python/3': (context) => const PythonTopic3(),
          '/python/1/quiz': (context) => const Quiz(),
        },
        debugShowCheckedModeBanner: false,
        theme: _darkTheme,
        title: 'Qadam',
      ),
    );
  }
}
