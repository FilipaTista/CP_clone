import 'package:flutter/foundation.dart';

class DateProvider with ChangeNotifier {
  DateTime? _departureDate;
  DateTime? _returnDate;
  DateTime firstDate = DateTime.now();
  DateTime lastDate = DateTime(2101);
  DateTime? get departureDate => _departureDate;
  DateTime? get returnDate => _returnDate;

  void updateDepartureDate(DateTime date) {
    _departureDate = date;
    notifyListeners();
  }

  void updateReturnDate(DateTime date) {
    _returnDate = date;
    notifyListeners();
  }
}
