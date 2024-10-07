import 'package:flutter/foundation.dart';

class LocationProvider with ChangeNotifier {
  String? _departureLocation;
  String? _arrivalLocation;

  String? _originLocation;
  String? _destinationLocation;

  String? get departureLocation => _departureLocation;
  String? get arrivalLocation => _arrivalLocation;

  String? get originLocation => _originLocation;
  String? get destinationLocation => _destinationLocation;

  void updateDeparture(String? newOption) {
    _departureLocation = newOption;
    notifyListeners(); // Notifica os ouvintes sobre a mudança
  }

  void updateArrival(String? newOption) {
    _arrivalLocation = newOption;
    notifyListeners(); // Notifica os ouvintes sobre a mudança
  }

  void updateOrigin(String? newOption) {
    _originLocation = newOption;
    notifyListeners(); // Notifica os ouvintes sobre a mudança
  }

  void updateDestination(String? newOption) {
    _destinationLocation = newOption;
    notifyListeners(); // Notifica os ouvintes sobre a mudança
  }
}
