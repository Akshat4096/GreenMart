import 'package:flutter/material.dart';
import 'Screens/Signup_Screen.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup_Screen(),
    );
  }
}
