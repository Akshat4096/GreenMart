import 'package:flutter/material.dart';
import 'package:fruit_application/Screens/Rename_cp.dart';
import 'package:fruit_application/components/Drawer_cp.dart';

class Myprofile_Sc extends StatefulWidget {
  const Myprofile_Sc({Key? key}) : super(key: key);

  @override
  State<Myprofile_Sc> createState() => _Myprofile_ScState();
}

class _Myprofile_ScState extends State<Myprofile_Sc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer_cp(),
        appBar: AppBar(
          backgroundColor: Colors.grey,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'My profile',
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                  onPressed: () {
                    _Rename_screen(context) ;
                  },
                  icon: Icon(
                    Icons.drive_file_rename_outline,
                    color: Colors.black,
                  ))
            ),
          ],
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
                  readOnly: true,
                  showCursor: false,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 20, 5),
                      child: Text(
                        'SK Patel',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
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
              readOnly: true,
              showCursor: false,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 20, 5),
                  child: Text(
                    '+91 9897893992',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
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
              readOnly: true,
              showCursor: false,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 20, 5),
                  child: Text(
                    'skpatel@gmail.com',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
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
      ),
    );
  }
  void _Rename_screen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Rename_cp()));
  }
}
