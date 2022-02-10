import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const meuApp());
}

class meuApp extends StatefulWidget {
  const meuApp({Key? key}) : super(key: key);

  @override
  _meuAppState createState() => _meuAppState();
}

class _meuAppState extends State<meuApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: minhaHome(),
    );
  }
}


