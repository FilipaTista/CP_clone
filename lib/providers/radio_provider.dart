import 'package:flutter/foundation.dart';

class RadioProvider with ChangeNotifier {
  String _selectedOption = 'option1'; // Valor inicial

  String get selectedOption => _selectedOption;

  void updateSelectedOption(String newOption) {
    _selectedOption = newOption;
    notifyListeners(); // Notifica os ouvintes sobre a mudança
  }
}
