import 'package:flutter/material.dart';

import '../globals.dart';
import '../model/pais.dart';
import '../routing/routes.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';

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
    final text = AppLocalizations.of(context);
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
              child: Text("${text?.borrar}"),
              onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: Text("${text?.eliminarPais}"),
                        content: Text("${text?.quieresEliminarPais}"),
                        actions: [
                          TextButton(
                              onPressed: () =>
                                  Navigator.pop(context, "${text?.cancelar}"),
                              child: Text("${text?.cancelar}")),
                          TextButton(
                              onPressed: (() {
                                paises.remove(widget.pais);
                                Navigator.pop(context, "${text?.cancelar}");
                                Navigator.pushReplacementNamed(
                                    context, Routes.secondRoute,
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
