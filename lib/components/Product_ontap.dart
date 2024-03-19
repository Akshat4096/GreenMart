import 'package:flutter/material.dart';

import '../Screens/Notification_screen.dart';
import 'Drawer_cp.dart';

class Product_ontap extends StatefulWidget {
  const Product_ontap({super.key});

  @override
  State<Product_ontap> createState() => _Product_ontapState();
}

class _Product_ontapState extends State<Product_ontap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey,
        title: Text(
          'All Inventory',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _Notification_screen(context);
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              )) ,
          IconButton(
            onPressed: () {

            },
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      drawer: Drawer_cp(),
      body: SingleChildScrollView( child:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row( children:[
                  Icon(
                    Icons.favorite ,
                    color: Colors.red,
                    size: 25,
                  ),
                  Text('24 Likes') ],),),
                Container(
                  child: Row( children:[
                    Icon(
                      Icons.thumb_down ,
                      // color: Colors.red,
                      size: 25,
                    ),
                    Text('10 Likes') ],),),
                //
              ],
            ) ,
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Center(
                child: Image(
                  image: AssetImage('assets/fruitimages/img2.jpg'),
                ),
              ),
            ) ,
            Container(
              height: 600,
              color: Colors.black26,
              child: Column(
                children: [
                      Padding(padding: EdgeInsets.fromLTRB(30, 2, 30,10),
                      child: Text('MAC - 10',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                        ) ,
                      Text('MAC - 10 has shipped from our facility to the province of ALBETRA and Should be avaliable for order within next three days') ,
                      SizedBox(height: 20,),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Available In',style: (TextStyle(fontSize: 30,color: Colors.blueGrey,fontWeight: FontWeight.bold)),) ,
                        Text('3.5g tins',style: (TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey)),) ,
                        Text('7g tins', style: (TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey)), ) ,
                      ],
                    ),
                  ) ,
                  SizedBox(
                    height: 20,
                  ) ,
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Price:500',style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold ),),
                        Text('Stock:50',style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ) ,
                  SizedBox(height: 20,),
                  Container(
                    // padding: EdgeInsets.fromLTRB(150, 10, 150,10),
                    height: 30,
                    width: 150,
                    child: Center( child:
                    ElevatedButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ) ,
                          SizedBox(width: 5,),
                          Text('ADD TO LIKE',style: (TextStyle(fontWeight: FontWeight.bold ,color: Colors.black)),),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          // DE85EEFF
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                    ),
                    ),
                  )
                ],
              ),
            ) ,

          ],
        ),
      ),

      ) );
  }
  void _Notification_screen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Notification_sc())) ;
  }
}
