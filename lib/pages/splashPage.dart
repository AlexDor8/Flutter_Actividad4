import 'package:flutter/material.dart';

import '../routing/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then(
        (value) => Navigator.pushReplacementNamed(context, Routes.fisrtRoute));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 200,
          // ignore: prefer_const_literals_to_create_immutables
          child: Stack(children: [
            // ignore: prefer_const_constructors
            Center(
              child: const SizedBox(
                  width: 200, height: 200, child: CircularProgressIndicator()),
            ),
            Center(
              child: Image.network('https://www.zarla.com/images/zarla-escpate-1x1-2400x2400-20210603-h6qr8xphp7xfp9vt4pwc.png?crop=1:1,smart&width=250&dpr=2', width: 80, height: 80,),
            )
          ]),
        )
      ]),
    );
  }
}
