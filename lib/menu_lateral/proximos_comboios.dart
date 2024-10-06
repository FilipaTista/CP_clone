import 'package:cp/componentes/dropdown_menu.dart';
import 'package:cp/horarios.dart';
import 'package:cp/menu_lateral/menu_lateral.dart';
import 'package:cp/providers/location_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NextTrains extends StatelessWidget {
  const NextTrains({super.key});

  @override
  Widget build(BuildContext context) {
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
                    "imagens/3.jpg",
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: 80,
                  child: Image.asset(
                    "imagens/cp_logo.png",
                    width: 70,
                    height: 70,
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: 25,
                  child: Text(
                    'Qual o próximo comboio?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 65,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomDropdownMenu(
                    locationProvider: locationProvider,
                    departure: true,
                    hint: "Escolha a sua estação de partida",
                    settings: false,
                  ),
                  IconButton(
                      onPressed: () => print("Location selector"),
                      icon: Icon(
                        Icons.location_pin,
                        size: 38,
                      ))
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
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
                      borderRadius: BorderRadius.all(Radius.circular(5)),
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
}
