import 'package:flutter/material.dart';

class Logo_CP extends StatefulWidget {
  const Logo_CP({Key? key}) : super(key: key);

  @override
  State<Logo_CP> createState() => _Logo_CPState();
}

class _Logo_CPState extends State<Logo_CP> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100,
      // height: 100,
      padding: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 15,
          offset: Offset(2, 30),
        )
      ]),
      child: CircleAvatar(
        // backgroundColor: Colors.black,
        radius: 80,
        backgroundImage: AssetImage('assets/logo.jpg'),
      ),
    );
  }
}
