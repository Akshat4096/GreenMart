import 'package:flutter/material.dart';
import 'package:fruit_application/Modals/Search_tap.dart';

import '../components/Drawer_cp.dart';
import '../components/Items_cp.dart';
import '../Modals/Search_tap.dart';
import 'Newproduct_screen.dart';
import 'Notification_screen.dart';
class Home_Sc extends StatefulWidget {
  Home_Sc({Key? key, required this.value}) : super(key: key);
  int? value ;
  @override
  State<Home_Sc> createState() => _Home_ScState();
}

class _Home_ScState extends State<Home_Sc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                _Search_tap(context) ;
              },
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
                onPressed: () {
                  _Notification_screen(context);
                },
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ))
          ],
        ),
        drawer: Drawer_cp(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black38,
          onPressed: (){
            _Newproduct_screen(context);
          },
          child: Icon(
            Icons.add,
            size: 40,
            color: Colors.black,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Items_cp(),
        ),

      ),
    );
  }
  void _Search_tap(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Search_tap())) ;
  }
  void _Newproduct_screen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Newproduct_sc())) ;
  }
  void _Notification_screen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Notification_sc())) ;
  }
}
