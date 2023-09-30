import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_project/screens/widgets/btn_widget.dart';
import 'package:ui_project/screens/widgets/carosalslider_widget.dart';
import 'package:ui_project/screens/widgets/dashed_btn.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  List<String> imageAssets = [
    "images/splash_1.png",
    "images/splash_2.png",
    "images/splash_3.png"
  ];
  PageController _pageController = PageController(initialPage: 0);
  ValueNotifier<int> currentIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,75, 0, 10),
              child: Text(
                'TOKOTO',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.orange.shade800,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w800),
              ),
            ),
            Text.rich(TextSpan(
                text: "Welcome to",
                style: TextStyle(color: Colors.grey, fontFamily: "Mulish"),
                children: <InlineSpan>[
                  TextSpan(
                      text: " Tokoto,",
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: " Let's shop!",
                            style: TextStyle(color: Colors.grey))
                      ])
                ])),

            // SizedBox(height: 10,),
            Container(
                // width: 500,
                height: 440,
                child: CarosalSliderX()),
            SizedBox(height: 25,),
            BtnWidget(),
          ],
        ),
      ),
    );
  }
}

// child :container(
//   width :currentIndex==entry.key ?17:7,
// height:7.0,
//
// )
// decoration:BoxDecoration(
//  borderRadius:BorderRadius.circular(10),
//  color:currentIndex==entry.key ?Colors.red:Colors.black38,
//
// )


// Container(
// width: 400,
// height: 270,
// child: PageView.builder(
// itemCount: imageAssets.length, // number of pages
// controller: _pageController,
// onPageChanged: (index) {
// currentIndex.value = index;
// },
// itemBuilder: (context, index) {
// return Container(
// child: Image.asset(imageAssets[index]),
// );
// }),
// ),
//
// ValueListenableBuilder(
// valueListenable: currentIndex,
// builder: (BuildContext context ,int value,Widget? child){
// // return Text("current image index ${value+1}");
// return GestureDetector(
// onTap: (){
// _pageController.animateToPage(2,duration:Duration(seconds: 1), curve:Curves.ease);
// },
// child: Container(
// width: currentIndex == value ?17:7,
// height: 7.0,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color:currentIndex == value ?Colors.red.shade600:Colors.orange,
// ),
//
// ),
// );
// }
// ),
