import 'screens/screens.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//Quitamos el debug
      debugShowCheckedModeBanner: false,

      initialRoute: "/listview1",
      routes: {
        "/listview1": (BuildContext context) => Listview1(),
        "/listview2": (BuildContext context) => Listview2(),
      },
//Configurar el tema
      theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.amber,
//configurar texto
          textTheme:
              TextTheme(bodyText2: TextStyle(color: Colors.red, fontSize: 30))),

// Pagina Inicial
//home: BotonFlotante(),
    );
  }
}
