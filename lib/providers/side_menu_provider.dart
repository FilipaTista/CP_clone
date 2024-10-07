import 'package:flutter/foundation.dart';

class SideMenuProvider with ChangeNotifier {
  String _sideMenuOption = 'opt1';

  String get option => _sideMenuOption;

  void updateOption(String newOption) {
    _sideMenuOption = newOption;
    notifyListeners();
  }
}
