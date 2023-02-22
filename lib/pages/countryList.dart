import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/detailList.dart';

import '../globals.dart';
import '../model/pais.dart';
import '../routing/routes.dart';

// ignore: camel_case_types
class secondRoute extends StatefulWidget {
  const secondRoute({super.key, required this.email});

  final String email;

  @override
  State<secondRoute> createState() => _secondRouteState();
}

// ignore: camel_case_types
class _secondRouteState extends State<secondRoute> {
  

  late int posicion;

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
            Text("Nombre de usuario: ${widget.email}"),
            Flexible(
                child: InkWell(
              child: ListView.builder(
                  itemCount: paises.length,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Hero(
                              tag: paises[index].pais,
                              child: Image.network(
                                paises[index].urlImagen,
                                width: 150,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              children: [
                                Text(paises[index].pais),
                                Text(paises[index].ciudad)
                              ],
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, Routes.thirdRoute, arguments: paises[index]);
                        });
                  })),
            )),
          ],
        ),
      ),
    );
  }
}
