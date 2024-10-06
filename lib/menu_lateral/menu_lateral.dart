import 'package:cp/menu_lateral/definicoes.dart';
import 'package:cp/menu_lateral/proximos_comboios.dart';
import 'package:cp/pagina_inicial.dart';
import 'package:cp/providers/side_menu_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sideMenuProvider = Provider.of<SideMenuProvider>(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          GestureDetector(
            onTap: () {
              //abrir definiçoes
              if (sideMenuProvider.option != 'opt6') {
                sideMenuProvider.updateOption('opt6');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              }
            },
            child: SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 237, 237, 237),
                ),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 209, 209, 209),
                      child: Text(
                        "FB",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Filipa',
                      style: TextStyle(
                        color: Color.fromARGB(255, 121, 121, 121),
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.search,
              color: sideMenuProvider.option == 'opt1'
                  ? Colors.green
                  : Colors.black,
            ),
            title: Text(
              'Pesquisa e compra',
              style: TextStyle(
                  color: sideMenuProvider.option == 'opt1'
                      ? Colors.green
                      : Colors.black),
            ),
            onTap: () {
              // Check if not already in page
              if (sideMenuProvider.option != 'opt1') {
                sideMenuProvider.updateOption('opt1');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              }
            },
          ),
          ListTile(
            leading: Icon(
              Icons.train_outlined,
              color: sideMenuProvider.option == 'opt2'
                  ? Colors.green
                  : Colors.black,
            ),
            title: Text(
              'Próximos comboios',
              style: TextStyle(
                  color: sideMenuProvider.option == 'opt2'
                      ? Colors.green
                      : Colors.black),
            ),
            onTap: () {
              // Ação para a página de configurações
              if (sideMenuProvider.option != 'opt2') {
                sideMenuProvider.updateOption('opt2');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NextTrains()),
                );
              }
            },
          ),
          ListTile(
            leading: Icon(
              Icons.confirmation_num_outlined,
              color: sideMenuProvider.option == 'opt3'
                  ? Colors.green
                  : Colors.black,
            ),
            title: Text(
              'Os seus bilhetes',
              style: TextStyle(
                  color: sideMenuProvider.option == 'opt3'
                      ? Colors.green
                      : Colors.black),
            ),
            onTap: () {
              // Ação para a página de configurações
              if (sideMenuProvider.option != 'opt3') {
                sideMenuProvider.updateOption('opt3');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              }
            },
          ),
          ListTile(
            leading: Icon(
              Icons.star_border,
              color: sideMenuProvider.option == 'opt4'
                  ? Colors.green
                  : Colors.black,
            ),
            title: Text(
              'A sua atividade',
              style: TextStyle(
                  color: sideMenuProvider.option == 'opt4'
                      ? Colors.green
                      : Colors.black),
            ),
            onTap: () {
              // Ação para a página de configurações
              if (sideMenuProvider.option != 'opt4') {
                sideMenuProvider.updateOption('opt4');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              }
            },
          ),
          ListTile(
            leading: Icon(
              Icons.calendar_month_outlined,
              color: sideMenuProvider.option == 'opt5'
                  ? Colors.green
                  : Colors.black,
            ),
            title: Text(
              'Os seus horários',
              style: TextStyle(
                  color: sideMenuProvider.option == 'opt5'
                      ? Colors.green
                      : Colors.black),
            ),
            onTap: () {
              // Ação para a página de configurações
              if (sideMenuProvider.option != 'opt5') {
                sideMenuProvider.updateOption('opt5');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              }
            },
          ),
          Divider(
            color: Colors.grey, // Cor da linha
            thickness: 1, // Espessura da linha
          ),
          ListTile(
            leading: Icon(
              Icons.settings_outlined,
              color: sideMenuProvider.option == 'opt6'
                  ? Colors.green
                  : Colors.black,
            ),
            title: Text(
              'Definições',
              style: TextStyle(
                  color: sideMenuProvider.option == 'opt6'
                      ? Colors.green
                      : Colors.black),
            ),
            onTap: () {
              // Ação para a página de configurações
              if (sideMenuProvider.option != 'opt6') {
                sideMenuProvider.updateOption('opt6');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              }
            },
          ),
          ListTile(
            leading: Icon(
              Icons.call_outlined,
              color: sideMenuProvider.option == 'opt7'
                  ? Colors.green
                  : Colors.black,
            ),
            title: Text(
              'Contactos',
              style: TextStyle(
                  color: sideMenuProvider.option == 'opt7'
                      ? Colors.green
                      : Colors.black),
            ),
            onTap: () {
              // Ação para a página de contatos
              if (sideMenuProvider.option != 'opt7') {
                sideMenuProvider.updateOption('opt7');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              }
            },
          ),
          ListTile(
            leading: Icon(
              Icons.task_alt_outlined,
              color: sideMenuProvider.option == 'opt8'
                  ? Colors.green
                  : Colors.black,
            ),
            title: Text(
              'Descontos e vantagens',
              style: TextStyle(
                  color: sideMenuProvider.option == 'opt8'
                      ? Colors.green
                      : Colors.black),
            ),
            onTap: () {
              // Ação para a página de configurações
              if (sideMenuProvider.option != 'opt8') {
                sideMenuProvider.updateOption('opt8');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              }
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline,
              color: sideMenuProvider.option == 'opt9'
                  ? Colors.green
                  : Colors.black,
            ),
            title: Text(
              'Avisos e informação',
              style: TextStyle(
                  color: sideMenuProvider.option == 'opt9'
                      ? Colors.green
                      : Colors.black),
            ),
            onTap: () {
              // Ação para a página de configurações
              if (sideMenuProvider.option != 'opt9') {
                sideMenuProvider.updateOption('opt9');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              }
            },
          ),
          ListTile(
            leading: Icon(
              Icons.history,
              color: sideMenuProvider.option == 'opt10'
                  ? Colors.green
                  : Colors.black,
            ),
            title: Text(
              'Informação de tráfego',
              style: TextStyle(
                  color: sideMenuProvider.option == 'opt10'
                      ? Colors.green
                      : Colors.black),
            ),
            onTap: () {
              // Ação para a página de configurações
              if (sideMenuProvider.option != 'opt10') {
                sideMenuProvider.updateOption('opt10');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              }
            },
          ),
          ListTile(
            leading: Icon(
              Icons.share_outlined,
              color: sideMenuProvider.option == 'opt11'
                  ? Colors.green
                  : Colors.black,
            ),
            title: Text(
              'Redes sociais',
              style: TextStyle(
                  color: sideMenuProvider.option == 'opt11'
                      ? Colors.green
                      : Colors.black),
            ),
            onTap: () {
              // Ação para a página de configurações
              if (sideMenuProvider.option != 'opt11') {
                sideMenuProvider.updateOption('opt11');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
