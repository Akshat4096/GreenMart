import 'package:flutter/material.dart';
import 'package:fruit_application/components/Addproduct_cp.dart';
import 'package:fruit_application/components/Drawer_cp.dart';
import 'package:dotted_border/dotted_border.dart';


class Newproduct_sc extends StatefulWidget {
  const Newproduct_sc({super.key});

  @override
  State<Newproduct_sc> createState() => _Newproduct_scState();
}

class _Newproduct_scState extends State<Newproduct_sc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer_cp(),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Add Products',style: TextStyle(fontSize: 20 , color: Colors.black),),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.drive_file_rename_outline,
              size: 30,
            ),
          ) ,
          SizedBox(
            width: 20,
          )
        ],
        ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(top: 30),
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(30, 5, 20, 5),
                ),
                hintText: "Enter catagory name",
                hintStyle: TextStyle(fontSize: 20),
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
            SizedBox(
              height: 30,
            ) ,
            TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(30, 5, 20, 5),
                ),
                hintText: "Add product name",
                hintStyle: TextStyle(fontSize: 20),
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
            SizedBox(
              height: 30,
            ) ,
            TextField(
              maxLines: 8,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(30, 5, 20, 5),
                ),
                hintText: "Add description",
                hintStyle: TextStyle(fontSize: 20),
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
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(30, 5, 20, 5),
                ),
                hintText: "Add price",
                hintStyle: TextStyle(fontSize: 20),
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
            SizedBox(
              height: 30,
            ) ,
            TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(30, 5, 20, 5),
                ),
                hintText: "Add stock",
                hintStyle: TextStyle(fontSize: 20),
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
            SizedBox(
              height: 30,
            ) ,
            Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text('Add Image',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),) ,
                    SizedBox(
                      height: 20,
                    ) ,
                    DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(30),
                      dashPattern: [10, 10],
                      strokeWidth: 3,
                    child:Container(
                     width: 300,
                     height: 200,
                     child: IconButton(
                       onPressed: (){

                       } ,
                       tooltip: 'Pick Image',
                     icon: Icon(
                       Icons.add,
                       size: 40,
                     ),),
                   ) ,),
                    SizedBox(
                      height: 20,
                ),
                    Addproduct_cp(),
                  ],

              ),
            )
    ),
          ],
        ),
      ),

    );
  }


}
