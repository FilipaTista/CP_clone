import 'package:flutter/material.dart';

class Horarios extends StatelessWidget {
  const Horarios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.green),

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Row(
              children: [
                //MUDAR PARA VALORES DINÂMICOS
                Text(
                  'De: Mealhada \nPara: Aveiro',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            Text(
              //COLOCAR DE FORMA DINÂMICA
              'Qua, 02 out., 10:38',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.star_border, color: Colors.green),
            onPressed: () {
              //Mandar para os favoritos em A sua atividade
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Horários'),
      ),
    );
  }
}
