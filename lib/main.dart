import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qadam/const/qadam_theme.dart';
import 'package:qadam/screens/learning_topic.dart';
import 'package:qadam/screens/login_screen.dart';
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
        debugShowCheckedModeBanner: false,
        theme: _lightTheme,
        title: 'Qadam',
        home: const LoginScreen(),
      ),
    );
  }
}
