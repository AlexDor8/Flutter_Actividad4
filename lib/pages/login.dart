import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';
import 'package:flutter_application_3/routing/app_routes.dart';
import 'package:flutter_application_3/routing/routes.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../globals.dart';

String password = "";

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<StatefulWidget> createState() => MainState();
}

class MainState extends State {
late Locale _locale;
Locale get locale => _locale;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splash,
      routes: appRoutes,
      localizationsDelegates: const[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
        Locale('en_US'),
        Locale('es_ES'),
        Locale('fr'),
      ],
    );
  }
  @override
  void initState() {
    super.initState();
    _locale = Locale(defaultLocale, defaultLanguage);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(100, 25, 100, 5),
            child: Image.network(
              'http://www.alisco-it.com/wp-content/uploads/2022/01/Flutter_Featured_Logo.png',
              fit: BoxFit.contain,
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        email = value!;
                        if (value.isEmpty) {
                          return "${text?.introduceTexto}";
                        }
                        if (value != "user") {
                          return "${text?.usuarioIncorrecto}";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        RegExp regex = RegExp(r'^(?=.*[a-z])(?=.*?[0-9])');
                        if (value == null || value.isEmpty) {
                          return "${text?.introduceTexto}";
                        }
                        if (value.length < 7) {
                          return "${text?.contrasenaCaracteres}";
                        }
                        if (!regex.hasMatch(value)) {
                          return "${text?.minNumLetra}";
                        }
                        if (value != "pass12345") {
                          return "${text?.contrasenaIncorrecta}";
                        }
                        return null;
                      }),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text(
                    "${text?.olvidarContrasena}",
                    style: const TextStyle(color: Colors.blue),
                  ),
                ),
                ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(context, Routes.home,);
                      }
                    }),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 85, 0, 10),
                  child: Text(
                    "${text?.nuevoUsuario}",
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
