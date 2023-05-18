import 'package:flutter/material.dart';
import 'package:listview/screens/listview1_screen.dart';

class Listview2 extends StatelessWidget {
  var games = ["pou", "fornite", "pacman", "motal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview tipo2'),
        ),
        body: ListView.separated(
          //obtener el tamaño de la lista
          itemCount: games.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(games[index]),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ),
            onTap: () {
              var seleccion = games[index];
              print(seleccion);
            },
          ),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
