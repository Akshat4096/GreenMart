import 'package:flutter/material.dart';
import 'package:fruit_application/Screens/Login_screen.dart';
import 'package:fruit_application/Screens/Tap_Screen.dart';

class Formcontainer extends StatefulWidget {
  const Formcontainer({Key? key}) : super(key: key);

  @override
  State<Formcontainer> createState() => _FormcontainerState();
}

class _FormcontainerState extends State<Formcontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Column(
            children: <Widget>[
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
                      child: Icon(Icons.mail_outline,color: Colors.black,),
                    ),
                    hintText:'E-mail',
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
                      child: Icon(Icons.lock_outlined ,color: Colors.black,),
                    ),
                    hintText:'Password',
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
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.grey),
                  onPressed: () {
                    _TapScreen(context);
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.black),
                  )),
              SizedBox(
                height: 5,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.blueAccent),
                  icon: Icon(Icons.facebook_outlined),
                  label:
                      Text('Continue Signin', style: TextStyle(fontSize: 17))),
              SizedBox(
                height: 5,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.redAccent),
                  icon: Icon(Icons.g_mobiledata),
                  label: Text(
                    'Continue Signin',
                    style: TextStyle(fontSize: 17),
                  )),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an Account?',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        _LoginScreens(context);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _LoginScreens(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Login_sc()));
  }

  void _TapScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Tap_Sc()));
  }
}
