import 'package:cp/providers/location_provider.dart';
import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  final LocationProvider locationProvider;
  final bool departure;
  final bool settings;
  final String hint;

  CustomDropdownMenu(
      {super.key,
      required this.locationProvider,
      required this.departure,
      required this.hint,
      required this.settings});

  final List<String> stations = ["Aveiro", "Mealhada"];

  String? getValue(LocationProvider locationProvider, bool settings) {
    if (settings) {
      return departure
          ? locationProvider.originLocation
          : locationProvider.destinationLocation;
    } else {
      return departure
          ? locationProvider.departureLocation
          : locationProvider.arrivalLocation;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      // Display the currently selected item, or hint if none is selected
      value: getValue(locationProvider, settings),
      hint: Text(hint),
      underline: SizedBox.shrink(),
      isExpanded: false,
      // List of dropdown items
      items: stations.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      // Called when the user selects an item
      onChanged: (String? newValue) {
        if (settings) {
          departure
              ? locationProvider.updateOrigin(newValue!)
              : locationProvider.updateDestination(newValue!);
        } else {
          departure
              ? locationProvider.updateDeparture(newValue!)
              : locationProvider.updateArrival(newValue!);
        }
      },
      style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 121, 121, 121)),
    );
  }
}
