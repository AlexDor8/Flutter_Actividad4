import 'package:flutter/material.dart';
import 'package:flutter_application_3/model/billete.dart';
import 'package:flutter_application_3/model/pais.dart';
import 'package:flutter_application_3/pages/home.dart';
import 'package:flutter_application_3/pages/login.dart';
import 'package:flutter_application_3/pages/countryList.dart';
import 'package:flutter_application_3/pages/shoppingList.dart';
import 'package:flutter_application_3/pages/splash.dart';
import 'package:flutter_application_3/pages/detailList.dart';
import 'package:flutter_application_3/routing/routes.dart';

import '../pages/shoppingListDetail.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (context) => const SplashPage(),
    Routes.home: (context) => const Home(),
    Routes.fisrtRoute:(context) => const MyHomePage(title: 'Login Page'),
    Routes.secondRoute:(context) {
      final email = ModalRoute.of(context)!.settings.arguments as String;
      return secondRoute(email: email);
    },
    Routes.thirdRoute:(context) {
      final pais = ModalRoute.of(context)!.settings.arguments as Pais;
      return thirdRoute(title: "Third page", pais: pais);
    },
    Routes.catalogo: (context) => const shoppingList(),
    Routes.catalogoDetalle:(context) {
      final billete = ModalRoute.of(context)!.settings.arguments as Billete;
      return ShoppingDetailList(title: "Catalogue detail", billete: billete);
    },
  };
}