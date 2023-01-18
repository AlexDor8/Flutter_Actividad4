import 'package:flutter/material.dart';

import 'fisrtRoute.dart';

// ignore: camel_case_types
class secondRoute extends StatefulWidget {
  const secondRoute({super.key, @required email});

  @override
  State<secondRoute> createState() => _secondRouteState();
}

// ignore: camel_case_types
class _secondRouteState extends State<secondRoute> {
  int contador = 0;

  void incrementarContador() {
    setState(() {
      contador++;
    });
  }

  void decrementarContador() {
    setState(() {
      contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
      ),
      body: Center(
          child: SizedBox(
              child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text(
              "Bienvenido $email !",
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(90, 0, 90, 0),
            child: Image.network(
              'https://www.pngmart.com/files/21/Account-Avatar-Profile-PNG-Clipart.png',
              fit: BoxFit.contain,
            ),
          ),
          Text("$contador", style: const TextStyle(fontSize: 50)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                heroTag: "incrementar",
                  onPressed: incrementarContador, child: const Icon(Icons.add)),
              FloatingActionButton(
                heroTag: "decrementar",
                  onPressed: decrementarContador,
                  child: const Icon(Icons.remove)),
            ],
          ),
          ElevatedButton(
              child: const Text('Volver'),
              onPressed: () {
                Navigator.pop(context);
              }),
          
        ],
      ))),
    );
  }
}
