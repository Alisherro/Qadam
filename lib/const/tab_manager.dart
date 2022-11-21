import 'package:flutter/cupertino.dart';

class TabManager extends ChangeNotifier {
  int selectedTab = 1;

  void goToTab(index) {
    selectedTab = index;
    notifyListeners();
  }

}