import 'package:flutter/material.dart';
import 'package:homework/views/calc.dart';
import 'package:homework/views/even.dart';
import 'package:homework/views/home.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0D21),
      scaffoldBackgroundColor: Color(0xFF0A0D21),
    ),
        home: HomePage(),
    );
  }
}
