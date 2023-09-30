import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imageAssets = [
  "images/ps4_console_white_1.png",
  "images/ps4_console_white_2.png",
  "images/ps4_console_white_3.png",
  "images/ps4_console_white_4.png"
];
List imageList = [
  {"id": 1, "image_path": "images/ps4_console_white_1.png"},
  {"id": 2, "image_path": "images/ps4_console_white_2.png"},
  {"id": 3, "image_path": "images/ps4_console_white_3.png"},
  {"id": 3, "image_path": "images/ps4_console_white_4.png"},
];

class DetailScreen extends StatefulWidget {
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 5),
          child: Container(
              margin: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  "images/back.svg",
                  color: Colors.black45,
                ),
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '4.5',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade700,
                    size: 14,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 240,
                  color: Colors.grey.shade200,
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 130,
                        margin: EdgeInsets.only(bottom: 25),
                        child: CarouselSlider(
                          items: imageList
                              .map((item) => Image.asset(
                                    item['image_path'],
                                    // fit: BoxFit.fitHeight,
                                    // width: double.infinity,
                                    scale: 4,
                                  ))
                              .toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                              scrollPhysics: const BouncingScrollPhysics(),
                              autoPlay: false,
                              // aspectRatio: 2,
                              // viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                              }),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.asMap().entries.map((entry) {
                          // print(entry);
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(imageAssets[entry.key]),
                              ),
                              // width: currentIndex==entry.key?17:7,
                              width: 45,
                              height: 45,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white70,
                                  border: currentIndex == entry.key
                                      ? Border.all(
                                          color: Colors.orangeAccent.shade200
                                              .withOpacity(0.8),
                                          width: 1.5,
                                          style: BorderStyle.solid,
                                        )
                                      : Border.all(style: BorderStyle.none)
                                  // color: currentIndex==entry.key ?Colors.orange.shade600:Colors.grey,
                                  ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 390,
                  height: 230,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        children: [
                           SizedBox(width: 16,),
                          Text("Wireless Controller for PS4",style: TextStyle(fontSize:20,fontFamily: 'Mulish',color: Colors.black.withOpacity(0.6)),),
                          Text(
                            'TM',style: TextStyle(fontFeatures: [FontFeature.superscripts()],fontSize: 10,fontFamily: 'Mulish',fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(

                             width: 50,
                             height: 40,
                             decoration: BoxDecoration(color: Colors.red.shade100.withOpacity(0.5),borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))),
                          child: Align(
                            alignment: Alignment.center,
                            child: InkWell(
                                onTap: () {}, child: Icon(Icons.favorite,size: 15,color: Colors.redAccent,)),
                          ),
                        ),
                      ),
                       SizedBox(height: 15,),
                       Padding(
                         padding: const EdgeInsets.only(left:17),
                         child: Align(
                           alignment: Alignment.topLeft,
                           child: Text(
                             'Wirless Controller for PS4 gives you  \n'
                               'what you want in your gaming from over \n'
                               'precision control your games to sharing... ',style: TextStyle(fontFamily: "Mulish",height: 1.7,fontSize:13,color: Colors.grey),textAlign:TextAlign.start,),
                         ),
                       ),
                       SizedBox(height: 15,),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 17),
                             child: Text("See More Detail" ,style:TextStyle(color: Colors.orangeAccent.shade400),),
                           ),
                           SizedBox(width: 10,),
                           SvgPicture.asset("images/arrow_right.svg",width: 8,height: 8,color: Colors.orangeAccent.shade400,)
                         ],
                       )
                    ],
                  ),
                ),
                Container(
                  width: 390,
                  height:250,

                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: Column(
                    children: [
                      Row(
                        children: [
                           Container(
                             padding: EdgeInsets.only(top: 30,left: 25),
                             child: Row(
                               children: [
                                 Container(
                                   width: 18,
                                   height: 18,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.redAccent),
                                 ),
                                 SizedBox(width: 12,),
                                 Container(
                                   width: 18,
                                   height: 18,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF560bad).withOpacity(0.6)),
                                 ),
                                 SizedBox(width: 12,),
                                 Container(
                                   width: 18,
                                   height: 18,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFFbb9457).withOpacity(0.5)),
                                 ),
                                 SizedBox(width: 12,),
                                 Container(
                                     width: 18,
                                     height: 18,
                                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                                   ),

                               ],

                             ),
                           ),
                           Spacer(),

                           Container(
                             padding: EdgeInsets.only(right: 30,top: 30),
                             child: Row(
                               children: [
                                 Container(
                                     width:30,
                                     height: 30,
                                     decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)) ,
                                     child: Icon(Icons.remove)),
                                 SizedBox(width: 20,),
                                 Container(
                                      width:30,
                                      height: 30,
                             
                                      decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)) ,
                                     child: Icon(Icons.add_outlined)),


                               ],
                             ),
                           ), SizedBox(width: 20,),

                        ],
                      ),
                      SizedBox(
                        height:40,
                      ),
                      GestureDetector(

                          child: ElevatedButton(onPressed: (){}, child:Text('Add to Cart')))

                    ],
                  ),
                )


              ],
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
