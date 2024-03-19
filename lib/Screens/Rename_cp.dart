import 'package:flutter/material.dart';
import 'package:fruit_application/components/Addproduct_cp.dart';

import '../components/Drawer_cp.dart';

class Rename_cp extends StatefulWidget {
  const Rename_cp({super.key});

  @override
  State<Rename_cp> createState() => _Rename_cpState();
}

class _Rename_cpState extends State<Rename_cp> {
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
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Container(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SK Patel',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'User ID: 1092022',
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
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Name',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )),
              SizedBox(
                height: 20,
              ),
              TextField(

                decoration: InputDecoration(
                  hintText: 'SK Patel',
                  hintStyle: TextStyle(fontSize: 20),
                  prefixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 20, 5),

                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    // borderSide: BorderSide(color: Colors.),
                  ),
                  enabledBorder: OutlineInputBorder(
                    // borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Phone Number',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: '+91 9897893992',
              hintStyle: TextStyle(fontSize: 20),
              prefixIcon: Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 20, 5),

              ),
              focusedBorder: OutlineInputBorder(
                // borderSide: BorderSide(width: 2),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                // borderSide: BorderSide(color: Colors.),
              ),
              enabledBorder: OutlineInputBorder(
                // borderSide: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Email',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'skpatel@gmail.com',
              hintStyle: TextStyle(fontSize: 20),
              prefixIcon: Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 20, 5),
              ),
              focusedBorder: OutlineInputBorder(
                // borderSide: BorderSide(width: 2),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                // borderSide: BorderSide(color: Colors.),
              ),
              enabledBorder: OutlineInputBorder(
                // borderSide: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
          Addproduct_cp() ,

        ],
      ),
    );
  }
}
