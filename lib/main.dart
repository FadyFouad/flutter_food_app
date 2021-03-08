import 'package:flutter/material.dart';
import 'package:flutter_food_app/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}
