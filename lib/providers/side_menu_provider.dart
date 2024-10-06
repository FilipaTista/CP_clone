import 'package:flutter/foundation.dart';

class SideMenuProvider with ChangeNotifier {
  String _sideMenuOption = 'opt1'; // Valor inicial

  String get option => _sideMenuOption;

  void updateOption(String newOption) {
    _sideMenuOption = newOption;
    notifyListeners(); // Notifica os ouvintes sobre a mudança
  }
}
