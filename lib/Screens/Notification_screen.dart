import 'package:flutter/material.dart';

import '../components/Drawer_cp.dart';
class Notification_sc extends StatefulWidget {
  const Notification_sc({super.key});

  @override
  State<Notification_sc> createState() => _Notification_scState();
}

class _Notification_scState extends State<Notification_sc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.grey,
    title: Text(
    'Notification',
    style: TextStyle(fontSize: 25, color: Colors.black),
    ),
    ),
    drawer: Drawer_cp(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black38
          ),
          height: 350,
          width: double.infinity,
          // color: Colors.lightBlueAccent,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(40, 5, 20, 10),
              child: Text('Your Cannabis Select',style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 25),),) ,
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
                    child:Row(
                      children: <Widget>[
                      CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 10,
                      ) ,
                      SizedBox( width: 10,),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 50,
                        child: Icon(
                          Icons.shopping_cart,
                          size: 50,
                          color: Colors.white,
                        ),
                      ) ,
                      SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Strain', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),) ,
                            Text('MAC-10',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                          ],
                        )
                      ],
                    ) ,
                  ),
              SizedBox(
                height: 10,
              ) ,
              Text('Coming Soon Shipped to province',style: TextStyle(fontWeight: FontWeight.bold
                  ,fontSize: 20),) ,
              SizedBox(height: 10,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Feb 07-2024',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),) ,
                      Text('12:10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ) ,
                  SizedBox(width: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Feb 07-2024',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),) ,
                      Text('12:10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  )
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
