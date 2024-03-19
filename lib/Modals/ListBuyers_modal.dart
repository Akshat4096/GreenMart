import 'package:flutter/material.dart';

import '../components/Drawer_cp.dart';

class ListBuyers_modal extends StatefulWidget {
  const ListBuyers_modal({super.key});

  @override
  State<ListBuyers_modal> createState() => _ListBuyers_modalState();
}

class _ListBuyers_modalState extends State<ListBuyers_modal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer_cp(),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'My profile',
          style: TextStyle(fontSize: 25, color: Colors.black),
        )
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
      Container(
        padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 2
          )
        ),
      child: Row(
        children: <Widget>[
        Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            border: Border.all(
                width:2
            ),
            image: DecorationImage(
                image: AssetImage('assets/profileapk.jpg'),
                fit: BoxFit.fill
            ),
            borderRadius: BorderRadius.circular(30),
            color: Colors.black,
            shape: BoxShape.rectangle

        ),
      ),
      SizedBox(
        width: 20,
      ),
      Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SK Patel',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,) ,
          Text(
            'Active User',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      )
      ],
    ),
    ),
    SizedBox(
      height: 50,
    )      ,
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Colors.black,
                    width: 2
                )
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width:2
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/profile2.jpg'),
                          fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                      shape: BoxShape.rectangle

                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tina Zohn',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Inactive User',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
      SizedBox(height: 50,) ,
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Colors.black,
                    width: 2
                )
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width:2
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/profile3.jpg'),
                          fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                      shape: BoxShape.rectangle

                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Time Zone',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Inactive User',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),


    ],)
    );
  }
}
