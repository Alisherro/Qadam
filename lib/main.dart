import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qadam/const/qadam_theme.dart';
import 'package:qadam/screens/home_screen.dart';
import 'package:qadam/screens/login_screen.dart';
import 'package:qadam/screens/template.dart';
import 'const/tab_manager.dart';

void main() {
  final theme = QadamTheme.dark();
  runApp(
    ChangeNotifierProvider<TabManager>(
      create: (context)=>TabManager(),
      child: MaterialApp(
        theme: theme,
        debugShowCheckedModeBanner: false,
        title: 'Qadam',
        home: TemplateWidget(),
      ),
    ),
  );
}
