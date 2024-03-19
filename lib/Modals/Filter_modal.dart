import 'package:flutter/material.dart';
import 'package:fruit_application/Modals/Search_tap.dart';

import '../components/Drawer_cp.dart';

class Filter_modal extends StatefulWidget {
  const Filter_modal({super.key});

  @override
  State<Filter_modal> createState() => _Filter_modalState();
}

class _Filter_modalState extends State<Filter_modal> {
  bool checkBox1Value = false;
  bool checkBox2Value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer_cp(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
         backgroundColor: Colors.grey,
           title: Text(
            'All Inventory',
           style: TextStyle(fontSize: 25, color: Colors.black),
      ) ,),
      body: Padding(padding: EdgeInsets.all(20) ,
      child: Container(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
        Row(
            children: <Widget>[
              Checkbox(
                value: checkBox1Value,
                onChanged: (bool? newValue) {
                  setState(() {
                    checkBox1Value = newValue!;
                  });
                },
              ),
                SizedBox(width: 20,) ,
                Text('Low Price', style: TextStyle(fontSize: 30,color: Colors.grey,fontWeight: FontWeight.bold),)
              ]
              ) ,
          SizedBox(height: 20,),
            Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBox1Value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        checkBox1Value = newValue!;
                      });
                    },
                  ),
                  SizedBox(width: 20,) ,
                  Text('High Price', style: TextStyle(fontSize: 30,color: Colors.grey,fontWeight: FontWeight.bold),)
                ]
            ) ,
            SizedBox(height: 50,),
            Container(
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      _Search_modal(context);
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 50, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Colors.purpleAccent),
                    child: Text(
                      'APPLY',
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),
                    )),             ),
            )

          ],
      ),
    ),) ,);
  }
  void _Search_modal(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search_tap()));
  }
}
