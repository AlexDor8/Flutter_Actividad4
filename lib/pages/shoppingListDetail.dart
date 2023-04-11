import 'package:flutter/material.dart';
import 'package:flutter_application_3/globals.dart';

import '../model/billete.dart';
import '../routing/routes.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';

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
    final text = AppLocalizations.of(context);
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
              child: Text("${text?.borrar}"),
              onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: Text("${text?.eliminarBillete}"),
                        content: Text("${text?.quieresEliminarBillete}"),
                        actions: [
                          TextButton(
                              onPressed: () =>
                                  Navigator.pop(context, "${text?.cancelar}"),
                              child: Text("${text?.cancelar}")),
                          TextButton(
                              onPressed: (() {
                                billetes.remove(widget.billete);
                                Navigator.pop(context, "${text?.eliminar}");
                                Navigator.pushReplacementNamed(
                                    context, Routes.catalogo,
                                    arguments: email);
                              }),
                              child: Text("${text?.eliminar}"))
                        ],
                      ))),
        ],
      )),
    );
  }
}