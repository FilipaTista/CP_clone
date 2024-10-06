import 'package:cp/providers/date_provider.dart';
import 'package:cp/providers/location_provider.dart';
import 'package:cp/providers/radio_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pagina_inicial.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RadioProvider()),
        ChangeNotifierProvider(create: (_) => DateProvider()),
        ChangeNotifierProvider(create: (_) => LocationProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}






/*
to do:
- trocar botoes das datas para container clicaveis
- definir açoes para cada um dos menus do menu lateral
- separar os widgets para ficheiros diferentes
- criar lista com horarios
- possibilidade de adicionar mapa 
- mudar text field para container 
- Verificar erro do filtro de cor na imagem
- tentar colocar imagem e restante conteudo dentro de containers adaptativos
- colocar appbar clicavel

*/
