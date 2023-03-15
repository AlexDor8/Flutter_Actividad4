import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

import 'pages/login.dart';

final defaultLocale = ui.window.locale.languageCode;
final defaultLanguage = ui.window.locale.countryCode;

String get defaultDeviceLanguage {
  String defLocale  = defaultLocale;
  if (defaultLanguage != null) {
    defLocale += '_$defaultLanguage';
  }
  return defLocale;
}

void main() {
  Intl.defaultLocale = defaultDeviceLanguage;
  //initializeDateFormatting('es_ES', null);
  runApp(const MyApp());
}
