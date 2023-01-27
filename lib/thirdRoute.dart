import 'package:flutter/material.dart';

// ignore: camel_case_types
class thirdRoute extends StatefulWidget {
  const thirdRoute(
      {super.key,
      required this.title,
      required this.foto,
      required this.descripcion,
      required this.pais});

  final String title;
  final String foto;
  final String pais;
  final String descripcion;

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
              widget.foto,
              fit: BoxFit.contain,
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      widget.descripcion,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ))
        ],
      )),
    );
  }
}
