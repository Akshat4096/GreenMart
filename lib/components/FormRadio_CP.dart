import 'package:flutter/material.dart';

class Form_CP extends StatefulWidget {
  const Form_CP({Key? key}) : super(key: key);

  @override
  State<Form_CP> createState() => _Form_CPState();
}

class _Form_CPState extends State<Form_CP> {
  int selectedRadio = 0;
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: [
          Radio(
            value: 1,
            groupValue: selectedRadio,
            activeColor: Colors.blue,
            onChanged: (val) {
              print('Radio $val');
              setSelectedRadio(1);
            },
          ),
          Text(
            'Seller',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            width: 60,
          ),
          Radio(
            value: 2,
            groupValue: selectedRadio,
            activeColor: Colors.blue,
            onChanged: (val) {
              print('Radio $val');
            },
          ),
          Text(
            'Retailer',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
