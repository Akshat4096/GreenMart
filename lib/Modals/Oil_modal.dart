import 'package:flutter/material.dart';

import '../components/Product_ontap.dart';

class Oil_modal extends StatefulWidget {
  const Oil_modal({super.key});

  @override
  State<Oil_modal> createState() => _Oil_modalState();
}

class _Oil_modalState extends State<Oil_modal> {
  @override
  Widget build(BuildContext context) {
    List<ImageData> imageDataList =[
      ImageData(
        imagePath:"assets/fruitimages/img1.jpg" ,
      ) ,
      ImageData(
        imagePath:"assets/fruitimages/img2.jpg" ,
      ) ,
      ImageData(
        imagePath:"assets/fruitimages/img3.jpg" ,
      ) ,
      ImageData(
        imagePath:"assets/fruitimages/img4.jpg" ,
      ) ,
      ImageData(
        imagePath:'assets/fruitimages/img5.jpg' ,
      ) ,
      ImageData(
        imagePath:"assets/fruitimages/img6.jpg" ,
      ) ,
      ImageData(
        imagePath:"assets/fruitimages/img7.jpg" ,
      ) ,
      ImageData(
        imagePath:"assets/fruitimages/img8.jpg" ,
      ) ,
      ImageData(
        imagePath:"assets/fruitimages/img9.jpg" ,
      ) ,
      ImageData(
        imagePath:"assets/fruitimages/img10.jpg" ,
      ) ,
    ] ;
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20,5),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2 ,
            // crossAxisSpacing: 10,
            // mainAxisSpacing: 10,
            childAspectRatio: 1
        ),
        children: imageDataList.map((imageData) {
          return Padding(
            padding: EdgeInsets.all(5) ,
            child: InkWell(
              onTap: (){
                _product_ontap(context) ;
              },
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  shape: BoxShape.rectangle ,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(40, 10, 40, 5),
                      height: 100,
                      width: double.infinity,
                      child: Image.asset(imageData.imagePath),),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text(
                          'Funck Vibes' ,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                        ),
                      ),
                    ) ,
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text('8 in Stock'),
                    ),
                    Container(
                      // margin: EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Icon(

                              Icons.favorite,
                              color: Colors.red,
                              size: 15,
                            ),
                          ) ,
                          Text('14 Likes') ,
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.thumb_down,
                              size: 15,
                              // color: Colors.red,
                            ),
                          ) ,
                          Text('14 Likes') ,
                        ],
                      ),
                    ) ,
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
  void _product_ontap(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Product_ontap()));
  }
}
class ImageData {
  final String imagePath;

  // Constructor for the class
  ImageData({
    required this.imagePath,
  });
}