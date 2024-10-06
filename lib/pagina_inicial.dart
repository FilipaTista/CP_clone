import 'package:cp/providers/date_provider.dart';
import 'package:cp/providers/location_provider.dart';
import 'package:cp/providers/radio_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'menu_lateral.dart';
import 'horarios.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _selectDate(
      BuildContext context, DateProvider dateProvider, bool isDeparture) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isDeparture
          ? dateProvider.departureDate ?? DateTime.now()
          : dateProvider.returnDate ?? DateTime.now(),
      firstDate: dateProvider.firstDate,
      lastDate: dateProvider.lastDate,
    );
    if (picked != null) {
      if (isDeparture) {
        dateProvider.updateDepartureDate(picked);
        if (dateProvider.returnDate == null ||
            dateProvider.returnDate!.isBefore(picked)) {
          dateProvider.updateReturnDate(picked);
        }
      } else {
        dateProvider.updateReturnDate(picked);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final radioProvider = Provider.of<RadioProvider>(context);
    final dateProvider = Provider.of<DateProvider>(context);
    final locationProvider = Provider.of<LocationProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 40,
      ),
      drawer: MenuLateral(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                  child: Image.asset(
                    "imagens/223.jpg",
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: 130,
                  child: Image.asset(
                    "imagens/cp_logo.png",
                    width: 70,
                    height: 70,
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: 30,
                  child: Text(
                    'Aonde quer ir \nconnosco? ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(left: 15),
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: _buildRadioTile('Ida', 'option1', radioProvider)),
                const SizedBox(width: 16),
                Container(
                    padding: EdgeInsets.only(left: 15),
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: _buildRadioTile(
                        'Ida e Volta', 'option2', radioProvider)),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 8, 3, 8),
                  child: IconButton(
                    icon: Icon(Icons.swap_vertical_circle_outlined),
                    onPressed: () {
                      String? temp = locationProvider.arrivalLocation;
                      locationProvider
                          .updateArrival(locationProvider.departureLocation);
                      locationProvider.updateDeparture(temp);
                    },
                    iconSize: 45,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropdownMenu(
                            locationProvider: locationProvider,
                            departure: true,
                            hint: "De onde?",
                          ),
                          IconButton(
                              onPressed: () => print("Location selector"),
                              icon: Icon(
                                Icons.location_pin,
                                size: 38,
                              ))
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                        endIndent: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropdownMenu(
                              locationProvider: locationProvider,
                              departure: false,
                              hint: "Para onde?"),
                          IconButton(
                              onPressed: () => print("Location selector"),
                              icon: Icon(
                                Icons.location_pin,
                                size: 38,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            SizedBox(height: 16),
            Padding(
                padding: const EdgeInsets.all(8),
                child: radioProvider.selectedOption == 'option1'
                    ? ElevatedButton(
                        onPressed: () =>
                            _selectDate(context, dateProvider, true),
                        style: ButtonStyle(
                          fixedSize: WidgetStateProperty.all(
                              Size(MediaQuery.of(context).size.width, 50)),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                        ),
                        child: Text(dateProvider.departureDate == null
                            ? 'Partida: \n${dateProvider.firstDate.day}/${dateProvider.firstDate.month}/${dateProvider.firstDate.year}'
                            : 'Partida: \n${dateProvider.departureDate!.day}/${dateProvider.departureDate!.month}/${dateProvider.departureDate!.year}'),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () =>
                                _selectDate(context, dateProvider, true),
                            style: ButtonStyle(
                              fixedSize: WidgetStateProperty.all(Size(
                                  MediaQuery.of(context).size.width * 0.45,
                                  50)),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                            ),
                            child: Text(dateProvider.departureDate == null
                                ? 'Partida: \n${dateProvider.firstDate.day}/${dateProvider.firstDate.month}/${dateProvider.firstDate.year}'
                                : 'Partida: \n${dateProvider.departureDate!.day}/${dateProvider.departureDate!.month}/${dateProvider.departureDate!.year}'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                _selectDate(context, dateProvider, false),
                            style: ButtonStyle(
                              fixedSize: WidgetStateProperty.all(Size(
                                  MediaQuery.of(context).size.width * 0.45,
                                  50)),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                            ),
                            child: Text(dateProvider.returnDate == null
                                ? 'Regresso: \n${dateProvider.firstDate.day}/${dateProvider.firstDate.month}/${dateProvider.firstDate.year}'
                                : 'Regresso: \n${dateProvider.returnDate!.day}/${dateProvider.returnDate!.month}/${dateProvider.returnDate!.year}'),
                          )
                        ],
                      )),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: (locationProvider.arrivalLocation != null &&
                        locationProvider.departureLocation != null)
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Horarios()),
                        );
                      }
                    : null,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.green),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                  fixedSize: WidgetStateProperty.all(
                      Size(MediaQuery.of(context).size.width, 50)),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
                child: const Text('Pesquisar'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioTile(
      String title, String value, RadioProvider radioProvider) {
    return Row(children: [
      Radio<String>(
        value: value,
        groupValue: radioProvider.selectedOption,
        onChanged: (newValue) {
          radioProvider.updateSelectedOption(newValue!);
        },
      ),
      Text(title),
    ]);
  }
}

class DropdownMenu extends StatelessWidget {
  final LocationProvider locationProvider;
  final bool departure;
  final String hint;

  DropdownMenu(
      {super.key,
      required this.locationProvider,
      required this.departure,
      required this.hint});

  final List<String> stations = ["Aveiro", "Mealhada"];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      // Display the currently selected item, or hint if none is selected
      value: departure
          ? locationProvider.departureLocation
          : locationProvider.arrivalLocation,
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
        departure
            ? locationProvider.updateDeparture(newValue!)
            : locationProvider.updateArrival(newValue!);
      },
    );
  }
}
