import 'package:flutter/material.dart';
import 'package:fruit_application/Modals/Flowers_modal.dart';
import 'package:fruit_application/Screens/Newproduct_screen.dart';
import 'package:fruit_application/components/Drawer_cp.dart';
import 'package:fruit_application/components/Items_cp.dart';

import 'Alltab_modal.dart';
import 'Edibles_modal.dart';
import 'Filter_modal.dart';
import 'Oil_modal.dart';

class Search_tap extends StatefulWidget {
  const Search_tap({super.key});

  @override
  State<Search_tap> createState() => _Search_tapState();
}

class _Search_tapState extends State<Search_tap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey,
        title: Text('All Inventory',style: TextStyle(fontSize: 25,color: Colors.black),),
        actions: [
          IconButton(
            onPressed: () {
              // _Search_tap(context) ;
            },
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          // SizedBox(width: 10,) ,
          IconButton(
            onPressed: () {
              _Filter_modal(context) ;
            },
            icon: Icon(
              Icons.filter_alt_rounded,
              color: Colors.black,
            ),
          ),
          // SizedBox(width: 10,) ,
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
      body: DefaultTabController(
      length: 4 ,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
        Container (
        padding:EdgeInsets.only(top: 10) ,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.fromLTRB(30, 5, 20, 5),
                child: Icon(
                  color: Colors.black,
                  Icons.search,
                ),
              ),
              hintText: "Search",
              focusedBorder: OutlineInputBorder(
                // borderSide: BorderSide(width: 2),
                borderRadius:
                BorderRadius.all(Radius.circular(30.0)),
                // borderSide: BorderSide(color: Colors.),
              ),
              enabledBorder: OutlineInputBorder(
                // borderSide: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Colors.grey
              ),
              child: TabBar(
                // dragStartBehavior: DragStartBehavior.start,
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
    ) ,
    );

  }
  void _Newproduct_screen(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Newproduct_sc())) ;
  }
  void _Filter_modal(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Filter_modal())) ;
  }
}
