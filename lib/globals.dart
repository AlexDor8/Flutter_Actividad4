import 'dart:math';

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

DateTime fechaAleatoria() {
  var randomYear = Random().nextInt(54) + 1970;
  var randomMonth = Random().nextInt(12) + 1;
  var lastDayOfMonth = DateTime(randomYear, randomMonth + 1, 0).day;
  var randomDay = Random().nextInt(lastDayOfMonth) + 1;
  return DateTime(randomYear, randomMonth, randomDay);
}

List<Billete> billetes = [
  Billete(
      'Billete a Punta Cana',
      500,
      fechaAleatoria(),
      '¿Quién no ha soñado alguna vez con viajar a Punta Cana? Su fama no es inmerecida. En Punta Cana encontrarás todo lo que estás buscando para vivir unas vacaciones de ensueño. Sólo tienes que preocuparte de disfrutar, nosotros hacemos el resto. Viajarás con la mayor comodidad, ya que incluye vuelo directo, traslados del aeropuerto al hotel y muchas sorpresas más.',
      'https://d2l4159s3q6ni.cloudfront.net/resize/550x310/filters:max_age(2604800):quality(65):format(webp)/s3/dam/photos/a0/d9/77/52/12b6facc080a3be44789bf905a2259516547a317f28ae83ceec40af5.jpg'),
  Billete(
      'Riviera Maya',
      1000,
      fechaAleatoria(),
      'Uno de los paraísos del Caribe es Riviera Maya. Disfruta de un viaje todo incluido y descubre las infinitas playas, su imponente naturaleza, la cultura maya y disfruta de la exquisita gastronomía de la región. Todos nuestros viajes incluyen vuelos directos, traslados y hotel en régimen de todo incluido, así que ya sabes, ¡a disfrutar!',
      'https://d2l4159s3q6ni.cloudfront.net/resize/550x310/filters:max_age(2604800):quality(65):format(webp)/s3/dam/photos/4f/41/86/8a/6cc7d4ce84f9082132f31d7e329a3daf1cd71e9e4c1d3fd3595f1690.jpg'),
  Billete(
      'Cancún',
      1139,
      fechaAleatoria(),
      '¿Quién no ha soñado alguna vez con viajar a Cancún? Este es el momento. Este destino todo incluido te brindará unos días de relax y desconexión en los que podrás disfrutar de playas paradisiacas y parajes estremecedores cargados de historia. Además, con todas las facilidades: vuelo directo, con traslados incluidos y muchas ventajas más.',
      'https://d2l4159s3q6ni.cloudfront.net/resize/550x310/filters:max_age(2604800):quality(65):format(webp)/s3/dam/photos/19/31/72/18/f1931393e90d4dc4a053a8bc4e51afb12b477599def763d0a38a4a5b.jpg'),
  Billete(
      'Varadero',
      950,
      fechaAleatoria(),
      'Cuba nunca defrauda. Este hermoso destino cuenta con nada menos que 22 playas y cada una de ellas es espectacular. Arana fina, agua cristalina, cocoteros y lugares llenos de diversión. Además, sólo tendrás que preocuparte de disfrutar ya que cuentas con un viaje totalmente organizado: vuelo directo, traslados, seguro de viaje y mucho más. ¡Que no te lo cuenten!',
      'https://d2l4159s3q6ni.cloudfront.net/resize/550x310/filters:max_age(2604800):quality(65):format(webp)/s3/dam/photos/4a/c9/23/20/68f88df0abe394830476a75a64d800297659625de81ca0fe788bb66a.jpg'),
  Billete(
      'La Habana',
      1038,
      fechaAleatoria(),
      'La Habana es un lugar repleto de historia. Sus calles, su arquitectura, la forma de vida de los locales. Un destino que no deja indiferente. Con este paquete podrás conocer la ciudad en profundidad sin preocupaciones, con vuelo directo y traslados.',
      'https://d2l4159s3q6ni.cloudfront.net/resize/550x310/filters:max_age(2604800):quality(65):format(webp)/s3/dam/photos/fb/72/b1/4f/f7ea95db62e1824f75fe70656028f5a71a4d37107e8a80f100d48280.jpg'),
  Billete(
      'Bayahíbe',
      1454,
      fechaAleatoria(),
      'Si necesitas unos días de relax y desconexión, Bayahibe es el destino perfecto. Podrías disfrutar de un paradisíaco lugar situado en República Dominicana. No tienes nada por lo que preocuparte, sólo de disfrutar ya que tendrás vuelo directo, traslados incluidos y muchas ventajas más. No te lo pienses más y ven a disfrutar del Caribe en Bayahíbe.',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/e3/82/69/swimming-pool.jpg?w=500&h=300&s=1'),
  Billete(
      'Nuremberg',
      400,
      fechaAleatoria(),
      'Núremberg, una ciudad del norte de Baviera, se distingue por su arquitectura medieval, como las fortificaciones y torres de piedra de su Altstadt (Ciudad Vieja).',
      'https://static.wixstatic.com/media/720a92_6c11b05d520f46079043db1209076730~mv2.jpg/v1/fit/w_1000%2Ch_1000%2Cal_c%2Cq_80,enc_auto/file.jpg'),
  Billete(
      'Barcelona',
      850,
      fechaAleatoria(),
      'Barcelona, la capital cosmopolita de la región de Cataluña en España, es conocida por su arte y arquitectura. La fantástica iglesia de la Sagrada Familia y otros hitos modernistas diseñados por Antoni Gaudí adornan la ciudad. ',
      'https://www.trammellcrow.com/-/media/tcc_hsr/countrytcc/images/bu-icons/tcc_buicon_barcelona.jpg'),
  Billete(
      'Praga',
      746,
      fechaAleatoria(),
      'Praga, la capital de la República Checa, está dividida por el río Moldava. Recibe el apodo de la “Ciudad de las Cien Torres” y es conocida por la Plaza de la Ciudad Vieja, el núcleo de su centro histórico, con coloridos edificios barrocos, iglesias góticas y el Reloj Astronómico medieval, que muestra un espectáculo animado cada hora.',
      'https://www.disfrutapraga.com/f/republica-checa/praga/guia/praga.jpg'),
  Billete(
      'Roma',
      460,
      fechaAleatoria(),
      'Roma, la capital de Italia, es una extensa ciudad cosmopolita que tiene a la vista casi 3,000 años de arte, arquitectura y cultura de influencia mundial. Las ruinas antiguas como las del Foro y el Coliseo evocan el poder del antiguo Imperio Romano.',
      'https://img.bekiaviajes.com/ciudades/portada/0000/6-h.jpg'),
  Billete(
      'Tokyo',
      1578,
      fechaAleatoria(),
      'Tokio, la ajetreada capital de Japón, mezcla lo ultramoderno y lo tradicional, desde los rascacielos iluminados con neones hasta los templos históricos. El opulento santuario Shinto Meiji es conocido por su puerta altísima y los bosques circundantes. El Palacio Imperial se ubica en medio de grandes jardines públicos.',
      'https://planetofhotels.com/guide/sites/default/files/styles/node__blog_post__bp_banner/public/live_banner/Tokyo.jpg')
];
