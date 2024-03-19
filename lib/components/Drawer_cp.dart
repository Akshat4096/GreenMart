import 'package:flutter/material.dart';
import 'package:fruit_application/Modals/Alltab_modal.dart';
import 'package:fruit_application/Modals/ChangePass_modal.dart';
import 'package:fruit_application/Modals/Flowers_modal.dart';
import 'package:fruit_application/Modals/LikeDislike_modal.dart';
import 'package:fruit_application/Modals/ListBuyers_modal.dart';
import 'package:fruit_application/Screens/Home_Screen.dart';
import 'package:fruit_application/Screens/Myprofile_Screen.dart';
import 'package:fruit_application/components/Items_cp.dart';

import '../Modals/Edibles_modal.dart';
import '../Modals/Oil_modal.dart';

class Drawer_cp extends StatefulWidget {
  const Drawer_cp({Key? key}) : super(key: key);

  @override
  State<Drawer_cp> createState() => _Drawer_cpState();
}

class _Drawer_cpState extends State<Drawer_cp> {
  var Index_value= 1 ;
  String? selectedItem ;
  String? selectedvalue;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: [
                    Container(
                      // width: 100,
                      // height: 100,
                      padding: EdgeInsets.fromLTRB(20, 40, 10, 10),
                      child: CircleAvatar(
                        // backgroundColor: Colors.black,
                        radius: 50,
                        backgroundImage: AssetImage('assets/profileapk.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'SK Patel',
                              style: TextStyle(
                                  fontSize: 30),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              textAlign: TextAlign.left,
                              'Seller',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: TextButton(
                    onPressed: () {
                      _Myprofile_Sc(context);
                    },
                    child: Text(
                      'VIEW PROFILE',
                      style: TextStyle(
                          fontSize: 25, decoration: TextDecoration.underline , color: Colors.black),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.home_outlined,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Home',
                        style: TextStyle(fontSize: 23 ,color: Colors.black45),
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.inventory_2_outlined,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Dropdown button
                      DropdownButton<String>(

                        hint: Text('All Inventory',style: TextStyle(fontSize: 23,color: Colors.black45 ),) ,
                        style: TextStyle(fontSize: 23,color: Colors.black45),
                        value: selectedItem,
                        items: <String>['All Inventory', 'Vegetable', 'Fruit', 'Flower']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedItem = newValue;
                          }) ;

                          // Navigate to a new screen when an item is selected
                          if (newValue == 'All Inventory') {

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Home_Sc(value: Index_value!,),
                              ),
                            );
                          } else if (newValue == 'Flower') {
                            setState(() {
                              Index_value == 1;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home_Sc(value: Index_value!,),)
                                ) ;
                          } else if (newValue == 'Edibles') {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Home_Sc(value: Index_value!,),
                              ),
                            );
                          }  else if (newValue == 'Oil') {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Home_Sc(value: Index_value!,),
                              ),
                            );
                          }
                          // Add more conditions for other items as needed.
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.inventory_2_outlined,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  DropdownButton<String>(

                    hint: Text('My Inventory',style: TextStyle(fontSize: 23,color: Colors.black45),) ,
                    style: TextStyle(fontSize: 23,color: Colors.black45),
                    value: selectedvalue,
                    items: <String>['Customer Support', 'Report',]
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedvalue = newValue;
                      }) ;

                      // Navigate to a new screen when an item is selected
                      if (newValue == 'Customer support') {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Home_Sc(value: 1,),
                          ),
                        );
                      } else if (newValue == 'Report') {

                      }
                      // Add more conditions for other items as needed.
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.filter_list_alt,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        _LikedDislike_modal(context);
                      },
                      child: Text(
                        'Liked & Disliked List',
                        style: TextStyle(fontSize: 23,color: Colors.black45),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.person_outline_sharp,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        _ListBuyers_modal(context);
                      },
                      child: Text(
                        'List of buyers',
                        style: TextStyle(fontSize: 23 , color: Colors.black45),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.lock_outline_rounded,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        _ChangePass_modal(context);
                      },
                      child: Text(
                        'Change Password',
                        style: TextStyle(fontSize: 23 ,color: Colors.black45),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.share,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Share',
                        style: TextStyle(fontSize: 23 ,color: Colors.black45),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.star_border,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Rate Us',
                        style: TextStyle(fontSize: 23 ,color: Colors.black45),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.logout,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Logout'),
                              content: Text('Are you sure you want to Logout?'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Yes')),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Cancel') ,

                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
                        'Logout',
                        style: TextStyle(fontSize: 23 ,color: Colors.black45),
                      )),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  void _Myprofile_Sc(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Myprofile_Sc()));
  }
  void _LikedDislike_modal(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LikeDislike_modal()));
  }
  void _ChangePass_modal(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ChangePass_modal()));
  }
  void _ListBuyers_modal(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ListBuyers_modal()));
  }
}
