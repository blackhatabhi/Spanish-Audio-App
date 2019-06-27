import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Spanish Number Audio App',
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
