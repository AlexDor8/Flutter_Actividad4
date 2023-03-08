import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import 'pages/login.dart';

void main() {
  Intl.defaultLocale = 'es_ES';
  initializeDateFormatting('es_ES', null);
  runApp(const MyApp());
}
