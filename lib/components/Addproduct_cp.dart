import 'package:flutter/material.dart';

class Addproduct_cp extends StatefulWidget {
  const Addproduct_cp({super.key});
  // Color mycolor  =const Color(0xFFDE85EEFE)
  @override
  State<Addproduct_cp> createState() => _Addproduct_cpState();
}

class _Addproduct_cpState extends State<Addproduct_cp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(80, 30, 80, 10),
      child: ElevatedButton(
        onPressed: (){},
        child: Text('ADD PRODUCT',style: (TextStyle(fontWeight: FontWeight.bold ,color: Colors.black)),),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlueAccent ,
            // DE85EEFF
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            )
        ),
      ),
    );
  }
}
