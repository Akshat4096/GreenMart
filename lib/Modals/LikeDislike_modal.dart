import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_application/components/Drawer_cp.dart';

import 'Alltab_modal.dart';
import 'Flowers_modal.dart';

class LikeDislike_modal extends StatefulWidget {
  const LikeDislike_modal({super.key});

  @override
  State<LikeDislike_modal> createState() => _LikeDislike_modalState();
}

class _LikeDislike_modalState extends State<LikeDislike_modal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer_cp(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey,
        title: Text(
          'All Inventory',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:30.0),
        child: DefaultTabController(
        length: 1 ,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.grey
                ),
                child: TabBar(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  dragStartBehavior: DragStartBehavior.start,
                  // tabAlignment:TabAlignment.center,
                  // isScrollable: true,
                  // onTap: (){},
                  indicator: BoxDecoration(
                    color: Colors.grey ,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  dividerColor: Colors.black,
                  labelColor: Colors.black26,
                  labelStyle: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      text: 'LIKED',
                    ) ,
                    Tab(
                      text: 'DISLIKED',
                    )
                  ],
                ),
              ) ,
              Expanded(child: TabBarView(
                children: [
                  Alltab_modal() ,
                  Alltab_modal(),
                ],
              ))
            ],
          ),
        ),),
      ),
    );
  }
}
