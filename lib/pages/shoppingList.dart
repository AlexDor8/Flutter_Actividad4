import 'package:flutter/material.dart';
import 'package:flutter_application_3/globals.dart';
import 'package:intl/intl.dart';

import '../routing/routes.dart';

// ignore: camel_case_types
class shoppingList extends StatefulWidget {
  const shoppingList({super.key});

  @override
  State<StatefulWidget> createState() => _shoppingListSate();
}

// ignore: camel_case_types
class _shoppingListSate extends State<shoppingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista billetes'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
            children: [Flexible(
          child: InkWell(
            child: ListView.builder(
                itemCount: billetes.length,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Hero(
                          tag: billetes[index].nombre,
                          child: Image.network(
                            billetes[index].urlImagen,
                            width: 150,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Text(billetes[index].nombre),
                            Text(
                                'Precio: ${NumberFormat.currency(symbol: '€').format(billetes[index].precio)}'),
                            Text(
                                'Fecha: ${DateFormat('dd-MM-yyyy').format(billetes[index].fechaAlta)}')
                          ],
                        )
                      ],
                    ),
                    /*onTap: () {
                      Navigator.pushNamed(context, Routes.thirdRoute,
                          arguments: billetes[index]);
                    }*/
                  );
                })),
          ),
        )]),
      ),
    );
  }
}
