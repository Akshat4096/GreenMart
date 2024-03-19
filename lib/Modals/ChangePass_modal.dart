import 'package:flutter/material.dart';

import '../Screens/Notification_screen.dart';
import '../components/Drawer_cp.dart';

class ChangePass_modal extends StatefulWidget {
  const ChangePass_modal({super.key});

  @override
  State<ChangePass_modal> createState() => _ChangePass_modalState();
}

class _ChangePass_modalState extends State<ChangePass_modal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer_cp(),
    appBar: AppBar(
    backgroundColor: Colors.grey,
    iconTheme: IconThemeData(color: Colors.black),
    title: Text(
    'Change Password',
    style: TextStyle(fontSize: 25, color: Colors.black),
    ),
      actions: [
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
      body: Container(
        height: double.infinity,
        width: double.infinity,

        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(30, 5, 20, 5),
                      child: Icon(
                        color: Colors.black,
                        Icons.key,
                      ),
                    ),
                    hintText: "Current Password",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius:
                      BorderRadius.all(Radius.circular(30.0)),
                      // borderSide: BorderSide(color: Colors.),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(30, 5, 20, 5),
                      child: Icon(
                        color: Colors.black,
                        Icons.key,
                      ),
                    ),
                    hintText: "New Password",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius:
                      BorderRadius.all(Radius.circular(30.0)),
                      // borderSide: BorderSide(color: Colors.),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(30, 5, 20, 5),
                      child: Icon(
                        color: Colors.black,
                        Icons.key,
                      ),
                    ),
                    hintText: "Confirm Password",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius:
                      BorderRadius.all(Radius.circular(30.0)),
                      // borderSide: BorderSide(color: Colors.),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ) ,
          Container(
            padding: EdgeInsets.fromLTRB(60, 30, 40, 10),
            child: ElevatedButton(
              onPressed: (){},
              child: Text('UPDATE',style: (TextStyle(fontWeight: FontWeight.bold ,color: Colors.black,fontSize: 20)),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  // DE85EEFF
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
  void _Notification_screen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Notification_sc())) ;
  }
}
