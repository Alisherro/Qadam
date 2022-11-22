import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:qadam/const/tab_manager.dart';
import 'package:qadam/screens/home_screen.dart';
import '../const/learning_section_class.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/learning_section_widget.dart';
import 'course_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  static List<Widget> pages = [
    HomeScreen(),
    CourseScreen(),
    Container(),
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
