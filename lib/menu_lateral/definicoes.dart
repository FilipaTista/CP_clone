import 'package:cp/componentes/dropdown_menu.dart';
import 'package:cp/menu_lateral/menu_lateral.dart';
import 'package:cp/providers/location_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final locationProvider = Provider.of<LocationProvider>(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.green),
          toolbarHeight: 40,
        ),
        drawer: MenuLateral(),
        backgroundColor: const Color.fromARGB(255, 237, 237, 237),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              height: 90,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromARGB(255, 209, 209, 209),
                          child: Text(
                            "FB",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Filipa\ncomputacaomovel@ua.pt',
                              style: TextStyle(
                                color: Color.fromARGB(255, 121, 121, 121),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                      onTap: () => print("Logout popup message."),
                      child: Text(
                        "Sair",
                        style: TextStyle(
                            color: Color.fromARGB(255, 121, 121, 121)),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text(
                "Percurso frequente",
                style: TextStyle(
                    color: Color.fromARGB(255, 121, 121, 121),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              color: Colors.white,
              height: 142,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.house_outlined,
                        color: Color.fromARGB(255, 121, 121, 121),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CustomDropdownMenu(
                        locationProvider: locationProvider,
                        departure: true,
                        hint: "A sua origem",
                        settings: true,
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.flag_outlined,
                        color: Color.fromARGB(255, 121, 121, 121),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CustomDropdownMenu(
                        locationProvider: locationProvider,
                        departure: false,
                        hint: "O seu destino",
                        settings: true,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text(
                "Os seus dados de viagem",
                style: TextStyle(
                    color: Color.fromARGB(255, 121, 121, 121),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              color: Colors.white,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.lock_clock_outlined,
                          color: Color.fromARGB(255, 121, 121, 121),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Dados pessoais",
                          style: TextStyle(
                              color: Color.fromARGB(255, 121, 121, 121)),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color.fromARGB(255, 121, 121, 121),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text(
                "Notificações",
                style: TextStyle(
                    color: Color.fromARGB(255, 121, 121, 121),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              color: Colors.white,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.newspaper,
                          color: Color.fromARGB(255, 121, 121, 121),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Subscrever",
                          style: TextStyle(
                              color: Color.fromARGB(255, 121, 121, 121)),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color.fromARGB(255, 121, 121, 121),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text(
                "Idioma",
                style: TextStyle(
                    color: Color.fromARGB(255, 121, 121, 121),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              color: Colors.white,
              height: 65,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Português",
                    style: TextStyle(color: Colors.green, fontSize: 14),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color.fromARGB(255, 121, 121, 121),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
