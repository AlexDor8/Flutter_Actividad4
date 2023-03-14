import 'package:flutter/material.dart';
import 'package:flutter_application_3/globals.dart';

import '../routing/routes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _home();
}

// ignore: camel_case_types
class _home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.catalogo);
            },
            child: const Text('Catalogo'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.secondRoute, arguments: email);
            },
            child: const Text('Paises'),
          ),
        ],
      )),
    );
  }
}
