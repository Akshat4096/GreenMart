import 'package:flutter/material.dart';
import 'package:fruit_application/Screens/Tap_Screen.dart';

import '../components/logo_avatar.dart';
import 'Signup_Screen.dart';

class Login_sc extends StatefulWidget {
  const Login_sc({Key? key}) : super(key: key);

  @override
  State<Login_sc> createState() => _Login_scState();
}

class _Login_scState extends State<Login_sc> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/akshat.jpg'),
              fit: BoxFit.cover,
            )),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Logo_CP(),
                SizedBox(
                  height: 70,
                ),
                Form(
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
                      ),
                        ),
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
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                              activeColor: Colors.blueAccent,
                              value: this.value,
                              onChanged: (bool? value) {
                                setState(() => this.value = value!);
                              },
                            ),
                            Text(
                              'Remember me',
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Forget your password?',
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                backgroundColor: Colors.grey),
                            onPressed: () {
                              _TapScreen(context);
                            },
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                backgroundColor: Colors.blueAccent),
                            icon: Icon(Icons.facebook_outlined),
                            label: Text('Continue Signin',
                                style: TextStyle(fontSize: 17))),
                        SizedBox(
                          height: 5,
                        ),
                        ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 5),
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
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'New User?',
                              style: TextStyle(fontSize: 20),
                            ),
                            TextButton(
                                onPressed: () {
                                  _Signup_Screen(context);
                                },
                                child: const Text(
                                  'Sign Up',
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
              ]),
            )),
      ),
    );
  }

  void _Signup_Screen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Signup_Screen()));
  }

  void _TapScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Tap_Sc()));
  }
}
