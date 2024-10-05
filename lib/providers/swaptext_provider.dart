import 'package:flutter/foundation.dart';

class SwapTextProvider with ChangeNotifier {
  String _fromText = '';
  String _toText = '';

  String get fromText => _fromText;
  String get toText => _toText;

  void updateFromText(String text) {
    _fromText = text;
    notifyListeners();
  }

  void updateToText(String text) {
    _toText = text;
    notifyListeners();
  }

  void swapText() {
    final temp = _fromText;
    _fromText = _toText;
    _toText = temp;
    notifyListeners();
  }
}
