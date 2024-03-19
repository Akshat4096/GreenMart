import 'package:flutter/material.dart';
import 'package:fruit_application/Screens/Home_Screen.dart';

class Tap_Sc extends StatefulWidget {
  const Tap_Sc({Key? key}) : super(key: key);

  @override
  State<Tap_Sc> createState() => _Tap_ScState();
}

class _Tap_ScState extends State<Tap_Sc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          _Homescreen(context);
        },
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/tapsc.jpg',
              fit: BoxFit.cover,
            ),
            Center(
              child: Text(
                '2023',
                style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 180, 2, 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'RETAIL MEMBER',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'SINCE',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _Homescreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Home_Sc(value: 1,)));
  }
}
