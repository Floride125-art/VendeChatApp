import 'package:flutter/material.dart';
import 'package:vendeapp/Screens/pages/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VendeChat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(
        selectedPage: 2,
      ),
    );
  }
}
