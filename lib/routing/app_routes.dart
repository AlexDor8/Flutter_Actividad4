
import 'package:flutter/material.dart';
import 'package:flutter_application_3/model/pais.dart';
import 'package:flutter_application_3/pages/login.dart';
import 'package:flutter_application_3/pages/countryList.dart';
import 'package:flutter_application_3/pages/splash.dart';
import 'package:flutter_application_3/pages/detailList.dart';
import 'package:flutter_application_3/routing/routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (context) => const SplashPage(),
    Routes.fisrtRoute:(context) => const MyHomePage(title: 'Login Page'),
    Routes.secondRoute:(context) {
      final email = ModalRoute.of(context)!.settings.arguments as String;
      return secondRoute(email: email);
    },
    Routes.thirdRoute:(context) {
      final pais = ModalRoute.of(context)!.settings.arguments as Pais;
      return thirdRoute(title: "Tercera pantalla", pais: pais);
    }
  };
}