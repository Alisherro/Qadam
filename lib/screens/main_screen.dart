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
