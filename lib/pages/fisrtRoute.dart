import 'package:flutter/material.dart';
import 'package:flutter_application_3/routing/app_routes.dart';
import 'package:flutter_application_3/routing/routes.dart';

import '../globals.dart';
import 'secondRoute.dart';

String password = "";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splash,
      routes: appRoutes,
    );
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
                          return "Introduce texto";
                        }
                        if (value != "user") {
                          return "El usuario no es correcto";
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
                          return "Introduce texto";
                        }
                        if (value.length < 7) {
                          return "La contraseña tiene que tener al menos 7 caracteres";
                        }
                        if (!regex.hasMatch(value)) {
                          return "Tiene que contener mínimo un numero y una letra";
                        }
                        if (value != "pass12345") {
                          return "La contraseña no es correcta";
                        }
                        return null;
                      }),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: const Text(
                    "Forgot password",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(context, Routes.secondRoute, arguments: email);
                      }
                    }),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 85, 0, 10),
                  child: const Text(
                    "New User? Create Account",
                    style: TextStyle(color: Colors.black, fontSize: 12),
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
