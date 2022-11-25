import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../const/tab_manager.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(
      builder: (context, tabManager, child) {
        return Container(
          height: 90,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12, right: 12, bottom: 5, top: 4),
            child: GNav(
              tabBackgroundGradient: const LinearGradient(
                colors: [Color(0xff5ee7df), Color(0xffb490ca)],
              ),
              selectedIndex: tabManager.selectedTab,
              onTabChange: tabManager.goToTab,
              gap: 8,
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Үй',
                ),
                GButton(
                  icon: Icons.star_outline_rounded,
                  text: 'Курстар',
                ),
                GButton(
                  icon: Icons.terminal,
                  text: 'Терминал',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
