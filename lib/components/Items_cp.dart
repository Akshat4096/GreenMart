import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_application/Modals/Alltab_modal.dart';
import 'package:fruit_application/Modals/Edibles_modal.dart';
import 'package:fruit_application/Modals/Oil_modal.dart';

import '../Modals/Flowers_modal.dart';
class Items_cp extends StatefulWidget {
  const Items_cp({super.key});

  @override
  State<Items_cp> createState() => _Items_cpState();
}

class _Items_cpState extends State<Items_cp> with TickerProviderStateMixin {
  late final TabController _controller;
  int  _Indexvalue = 0 ;

  @override
  void initState(){
    super.initState();
    _controller = TabController(length: 4, vsync: this) ;
    _controller.addListener(() {
      setState(() {
        _Indexvalue = _controller.index;
      });
      // print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 4 ,
      child: Padding(
        padding: EdgeInsets.all(5),
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
              controller: _controller,
              dragStartBehavior: DragStartBehavior.start,
              // isScrollable: true,
              // onTap: (){},
              physics: AlwaysScrollableScrollPhysics(),
              indicator: BoxDecoration(
                color: Colors.grey ,
                borderRadius: BorderRadius.circular(20),
              ),
              dividerColor: Colors.black,
              labelColor: Colors.black26,
              labelStyle: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: 'ALL',
                ) ,
                Tab(
                  text: 'VEGETABLE',
                ) ,
                Tab(
                  text: 'FRUIT',
                ) ,
                Tab(
                  text: 'FLOWER',
                ) ,
              ],
            ),
          ) ,
             Expanded(child: TabBarView(
              controller: _controller,
              dragStartBehavior: DragStartBehavior.start,
              children: [
                Alltab_modal() ,
                Flowers_modal(),
                Edibles_modal(),
                Oil_modal() ,
              ],
            ))
          ],
        ),
      ),
    ) ;
  }
}
