import 'package:flutter/foundation.dart';

class LocationProvider with ChangeNotifier {
  String? _departureLocation; // Iniciar mais tarde
  String? _arrivalLocation; // Iniciar mais tarde

  String? get departureLocation => _departureLocation;
  String? get arrivalLocation => _arrivalLocation;

  void updateDeparture(String? newOption) {
    _departureLocation = newOption;
    notifyListeners(); // Notifica os ouvintes sobre a mudança
  }

  void updateArrival(String? newOption) {
    _arrivalLocation = newOption;
    notifyListeners(); // Notifica os ouvintes sobre a mudança
  }
}
