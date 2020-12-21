import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pon_aqui_tu_titulo'),
        ),
        body: Center(
          child: Container(
              child: Text('Pon_aqui_tu_titulo')
          ),
        ),
      ),
    );
  }
}
