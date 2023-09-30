import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardItem {
  final String assetImage;
  final String title;

  const CardItem({
    required this.assetImage,
    required this.title,
  });
}

class ListViewWidget extends StatefulWidget {
  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  List<CardItem> items = [
    CardItem(assetImage: "images/FlashIcon.svg", title: "Flash \n Deal"),
    CardItem(assetImage: "images/BillIcon.svg", title: "Bill"),
    CardItem(assetImage: "images/GameIcon.svg", title: "Game"),
    CardItem(assetImage: "images/GiftIcon.svg", title: "Dolly \n Gift"),
    CardItem(assetImage: "images/Discover.svg", title: "More")

  ];

  Widget  buildCard({required CardItem item}) => Row(
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.symmetric(horizontal:6),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0XFFf9dcc4).withOpacity(0.6)),
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: SvgPicture.asset(item.assetImage ,width: 10,height: 10,)
                ),
              ),
              SizedBox(height: 6,),
              Text(item.title,style: TextStyle(fontSize: 12,color: Colors.black38,fontFamily: "Mulish",decoration: TextDecoration.none ),)
            ],
          ),

        ],
      );

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal:15),
      child: ConstrainedBox(
        constraints: BoxConstraints.expand(height: 100,width:400),

        child: Container(
          // margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.2),

          ),
          child: ListView.separated(
                scrollDirection: Axis.horizontal,
                // padding: EdgeInsets.all(12.0),
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    // width: 1.0,
                  );
                },
                itemBuilder: (context, index) {
                  return buildCard(item: items[index] );
                }),
        ),
      ),
    );
  }
}

// class ListViewWidget extends StatefulWidget{
//   @override
//   State<ListViewWidget> createState() => _ListViewWidgetState();
// }
//
// class _ListViewWidgetState extends State<ListViewWidget> {
//   Widget buildCard(int index)=>Container(
//     width: 150,
//     height: 150,
//     color: Colors.deepPurple,
//     child: Center(child: Text("${index}",style: TextStyle(color: Colors.white),),),
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         height: 170,
//         child: ListView.separated(
//             scrollDirection: Axis.horizontal,
//             padding: EdgeInsets.all(12.0),
//             itemCount: 10,
//             separatorBuilder: (context,index){
//               return const SizedBox(width: 12.0,);
//             },
//             itemBuilder:(context,index) {
//               return buildCard(index);
//             }
//         ),
//       ),
//     );
//
//   }
// }
