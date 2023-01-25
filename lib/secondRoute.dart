import 'package:flutter/material.dart';
import 'package:flutter_application_3/thirdRoute.dart';

import 'fisrtRoute.dart';
import 'model/pais.dart';

// ignore: camel_case_types
class secondRoute extends StatefulWidget {
  const secondRoute({super.key, @required email});

  @override
  State<secondRoute> createState() => _secondRouteState();
}

// ignore: camel_case_types
class _secondRouteState extends State<secondRoute> {
  late List<Pais> paises = [
    Pais(
        'https://www.maravillas-del-mundo.com/Cristo-redentor/images/Photos/Christ-redempteur-006.jpg',
        'Brasil',
        'Rio de Janeiro',
        'Río de Janeiro es una enorme ciudad costera de Brasil, famosa por sus playas de Copacabana e Ipanema, la estatua del Cristo Redentor de 38 m de alto sobre el cerro del Corcovado y el morro Pan de Azúcar, una cima de granito con teleféricos que ascienden a su cima.'),
    Pais(
        'https://cdn.culturagenial.com/es/imagenes/la-muralla-china-og.jpg',
        'China',
        'La gran muralla China',
        'La Gran Muralla china es una antigua fortificación china,​ construida y reconstruida entre el siglo V a. C. y el siglo XVI para proteger la frontera norte del Imperio chino durante las sucesivas dinastías imperiales de los ataques de los nómadas xiongnu de Mongolia y Manchuria. La Gran Muralla en Jinshanling.'),
    Pais(
        'https://viajes.nationalgeographic.com.es/medio/2018/03/01/machu-picchu_5ff969ae_1280x720.jpg',
        'Perú',
        'El Machu Picchu',
        'Machu Picchu es el sitio arqueológico inca más sobresaliente debido a su creativo diseño urbano, la belleza de su arquitectura y el fino trabajo en piedra de sus construcciones. En su planificación se aprovechó notablemente la topografía de la cima de la montaña a la que transformó en una imponente llaqta.'),
  ];

  late int posicion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
      ),
      body: Center(
          child: InkWell(
        child: ListView.builder(
            itemCount: paises.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Image.network(
                        paises[index].urlImagen,
                        width: 150,
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
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => thirdRoute(
                          title: "Tercera pantalla",
                          foto: paises[index].urlImagen,
                          descripcion: paises[index].descripcion),
                    ));
                  });
            })),
      )),
    );
  }
}
