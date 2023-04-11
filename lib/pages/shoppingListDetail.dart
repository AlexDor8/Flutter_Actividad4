import 'package:flutter/material.dart';
import 'package:flutter_application_3/globals.dart';

import '../model/billete.dart';
import '../routing/routes.dart';

class ShoppingDetailList extends StatefulWidget {
  const ShoppingDetailList({super.key, required this.title, required this.billete});

  final String title;
  final Billete billete;

  @override
  State<ShoppingDetailList> createState() => _shoppingDetailList();
}

// ignore: camel_case_types
class _shoppingDetailList extends State<ShoppingDetailList> {
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
            tag: widget.billete,
            child: Image.network(
              widget.billete.urlImagen,
              fit: BoxFit.contain,
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      widget.billete.descripcion,
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
                        title: const Text("Eliminar billete"),
                        content: const Text("¿Quieres eliminar este billete?"),
                        actions: [
                          TextButton(
                              onPressed: () =>
                                  Navigator.pop(context, 'Cancelar'),
                              child: const Text('Cancelar')),
                          TextButton(
                              onPressed: (() {
                                billetes.remove(widget.billete);
                                Navigator.pop(context, 'Eliminar');
                                Navigator.pushReplacementNamed(
                                    context, Routes.catalogo,
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