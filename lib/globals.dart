import 'package:flutter_application_3/model/billete.dart';

import 'model/pais.dart';

List<Pais> paises = [
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

  late final String email;

  List<Billete> billetes = [
    Billete('Billete a Punta Cana', 500, DateTime.now(), '¿Quién no ha soñado alguna vez con viajar a Punta Cana? Su fama no es inmerecida. En Punta Cana encontrarás todo lo que estás buscando para vivir unas vacaciones de ensueño. Sólo tienes que preocuparte de disfrutar, nosotros hacemos el resto. Viajarás con la mayor comodidad, ya que incluye vuelo directo, traslados del aeropuerto al hotel y muchas sorpresas más.', 'https://d2l4159s3q6ni.cloudfront.net/resize/550x310/filters:max_age(2604800):quality(65):format(webp)/s3/dam/photos/a0/d9/77/52/12b6facc080a3be44789bf905a2259516547a317f28ae83ceec40af5.jpg')
  ];