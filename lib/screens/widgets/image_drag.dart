import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDrag extends StatefulWidget {
  @override
  State<ImageDrag> createState() => _ImageDragState();
}

class DragItem {
  final String assetImage;

  const DragItem({required this.assetImage});
}

List<DragItem> items = [
  DragItem(assetImage: "images/ImagePopularProduct1.png"),
  DragItem(assetImage: "images/ImagePopularProduct1.png"),
  DragItem(assetImage: "images/ImagePopularProduct1.png"),
  DragItem(assetImage: "images/ImagePopularProduct1.png"),
];





class _ImageDragState extends State<ImageDrag> {
  bool isImageTapped = false;

  void onTapImage() {
    setState(() {
      isImageTapped = true;

      ///set theflag to indicate the imgae is tapped
    });
  }




  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.grey.shade300,
          width: double.infinity,
          height:double.infinity,
          child: Stack(
            children: [
              Positioned(
                  bottom: 20,
                  left: 90,
                  child: Container(
                    constraints: BoxConstraints(
                          maxWidth: double.infinity,
                          maxHeight: double.infinity
                    ),
                    child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                            return Row(
                              children: [
                                isImageTapped ? Center(
                                  child: Container(
                                    width:200,
                                    height: 200,
                                    color: Colors.yellow,
                                    child: Image.asset(items[index].assetImage),
                                  ),
                                ):
                                GestureDetector(
                                   onTap:onTapImage,
                                   child: Container(
                                    width:45,
                                    height:45,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white70,),
                                    padding: EdgeInsets.all(10),
                                      child: Image.asset(items[index].assetImage,scale:6,)
                                  ),
                                )
                              ],
                            );
                          },
                          separatorBuilder: (context,index){
                            return SizedBox(
                              width: 10,
                            );
                          },
                          itemCount: 4),
                  ),
                  )
            ],
          ),




          // child: isImageTapped ? Center(
          //   child: Image.asset("images/ImagePopularProduct1.png",width: 100,height: 100,),
          //
          // ): GestureDetector(
          //   onTap: onTapImage,
          //   child: Image.asset("images/ImagePopularProduct1.png",width: 30,height: 40,),
          // ),
        ),
      ],
    );
  }
}
