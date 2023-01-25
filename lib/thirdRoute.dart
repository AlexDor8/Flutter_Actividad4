import 'package:flutter/material.dart';

// ignore: camel_case_types
class thirdRoute extends StatefulWidget {
  const thirdRoute({super.key, required this.title, required this.foto});

  final String title;
  final String foto;

  @override
  State<thirdRoute> createState() => _thirdRouteState();
}

// ignore: camel_case_types
class _thirdRouteState extends State<thirdRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: SizedBox(
              height: 100,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        widget.foto,
                        width: 150,
                      ),
                      Column(
                        children: const <Widget>[
                          Text('Old Boy'),
                          Text(
                            "Park Chan-Wook",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      const Icon(Icons.star),
                      const Text('4.5'),
                    ],
                  ),
                ],
              ))),
    );
  }
}
