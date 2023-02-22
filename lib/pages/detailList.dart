import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/countryList.dart';

import '../globals.dart';
import '../model/pais.dart';
import '../routing/routes.dart';

// ignore: camel_case_types
class thirdRoute extends StatefulWidget {
  const thirdRoute({super.key, required this.title, required this.pais});

  final String title;
  final Pais pais;

  @override
  State<thirdRoute> createState() => _thirdRouteState();
}

// ignore: camel_case_types
class _thirdRouteState extends State<thirdRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Hero(
            tag: widget.pais,
            child: Image.network(
              widget.pais.urlImagen,
              fit: BoxFit.contain,
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      widget.pais.descripcion,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              )),
          ElevatedButton(
              child: const Text('Borrar'),
              onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text("Eliminar país"),
                        content: const Text("¿Quieres eliminar este país?"),
                        actions: [
                          TextButton(
                              onPressed: () =>
                                  Navigator.pop(context, 'Cancelar'),
                              child: const Text('Cancelar')),
                          TextButton(
                              onPressed: (() {
                                paises.remove(widget.pais);
                                Navigator.pop(context, 'Eliminar');
                                Navigator.pushReplacementNamed(
                                    context, Routes.secondRoute,
                                    arguments: email);
                              }),
                              child: const Text('Eliminar'))
                        ],
                      ))),
        ],
      )),
    );
  }
}
