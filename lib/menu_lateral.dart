import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          GestureDetector(
            onTap: () {
              //abrir definiçoes
            },
            child: SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 205, 205, 205),
                ),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 125, 125, 125),
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
                        color: Color.fromARGB(255, 70, 69, 69),
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Pesquisa e compra'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.train_outlined),
            title: Text('Próximos comboios'),
            onTap: () {
              // Ação para a página de configurações
            },
          ),
          ListTile(
            leading: Icon(Icons.confirmation_num_outlined),
            title: Text('Os seus bilhetes'),
            onTap: () {
              // Ação para a página de configurações
            },
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('A sua atividade'),
            onTap: () {
              // Ação para a página de configurações
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_month_outlined),
            title: Text('Os seus horários'),
            onTap: () {
              // Ação para a página de configurações
            },
          ),
          Divider(
            color: Colors.grey, // Cor da linha
            thickness: 1, // Espessura da linha
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Definições'),
            onTap: () {
              // Ação para a página de configurações
            },
          ),
          ListTile(
            leading: Icon(Icons.call_outlined),
            title: Text('Contactos'),
            onTap: () {
              // Ação para a página de contatos
            },
          ),
          ListTile(
            leading: Icon(Icons.task_alt_outlined),
            title: Text('Descontos e vantagens'),
            onTap: () {
              // Ação para a página de configurações
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text(
              'Avisos e informação',
            ),
            onTap: () {
              // Ação para a página de configurações
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Informação de tráfego'),
            onTap: () {
              // Ação para a página de configurações
            },
          ),
          ListTile(
            leading: Icon(Icons.share_outlined),
            title: Text('Redes sociais'),
            onTap: () {
              // Ação para a página de configurações
            },
          ),
        ],
      ),
    );
  }
}
