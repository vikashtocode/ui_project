import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarosalSliderX extends StatefulWidget {
  @override
  State<CarosalSliderX> createState() => _CarosalSliderXState();
}

class _CarosalSliderXState extends State<CarosalSliderX> {
  List imageList = [
    {"id": 1, "image_path": "images/splash_1.png"},
    {"id": 2, "image_path": "images/splash_2.png"},
    {"id": 3, "image_path": "images/splash_3.png"}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  // print(currentIndex);
                },
                child: CarouselSlider(
                  items: imageList.map((item) => Image.asset(
                    item['image_path'],
                    fit: BoxFit.fitHeight,
                    width: double.infinity,
                  )
                  ).toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: false,
                    // aspectRatio: 2,
                    // viewportFraction: 1,
                    onPageChanged: (index,reason){
                      setState(() {
                        currentIndex= index;
                      });
                    }
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:imageList.asMap().entries.map((entry){
              print(entry);
              return GestureDetector(
                onTap: ()=>carouselController.animateToPage(entry.key),
                child:Container(
                  width: currentIndex==entry.key?17:7,
                  height: 7.0,
                  margin: EdgeInsets.symmetric(horizontal: 3.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentIndex==entry.key ?Colors.orange.shade600:Colors.grey
                  ),
                ) ,

              );
            }).toList(),


          ),

        ],
      ),
    );
  }
}
// Positioned(
// bottom: 10,
// left: 0,
// right: 0,
//
// child:
// )