import 'home.dart';
import 'welcome.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flashcards App',
        home: Welcome(score:'0/0'),
       // RadioPage()]),
        );
  }
}