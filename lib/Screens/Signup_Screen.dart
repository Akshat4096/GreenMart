import 'package:flutter/material.dart';
import 'package:fruit_application/components/FormRadio_CP.dart';
import 'package:fruit_application/components/logo_avatar.dart';

import '../components/Formcontainer.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({Key? key}) : super(key: key);

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/akshat.jpg'),
            fit: BoxFit.cover,
          )),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Logo_CP(),
              Form_CP(),
              Form(
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Column(
                        children: <Widget>[
                          Container(
                        child:  Material(
                              elevation: 30,
                              shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(40),),
                                child:TextField(
                                  decoration:InputDecoration(
                                    prefixIcon: Padding(
                                      padding:EdgeInsets.fromLTRB(30, 5, 20, 5),
                                      child: Icon(Icons.person ,color: Colors.black,),
                                    ),
                            hintText:'User Name',
                            focusedBorder:OutlineInputBorder(
                                borderSide:BorderSide(color: Colors.black ),
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ) ,
                            enabledBorder: OutlineInputBorder(
                          borderSide:BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(30)) ,
                        ),
                      ),
                    ),),),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        elevation: 30,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(40),),
                        child:TextField(
                          decoration:InputDecoration(
                            prefixIcon: Padding(
                              padding:EdgeInsets.fromLTRB(30, 5, 20, 5),
                              child: Icon(Icons.screen_lock_portrait_outlined ,color: Colors.black,),
                            ),
                            hintText:'Mobile Number',
                            focusedBorder:OutlineInputBorder(
                                borderSide:BorderSide(color: Colors.black ),
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ) ,
                            enabledBorder: OutlineInputBorder(
                              borderSide:BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(30)) ,
                            ),
                          ),
                        ),),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Formcontainer(),
            ]),
          )),
    );
  }
}
