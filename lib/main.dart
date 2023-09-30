
import 'package:flutter/material.dart';
import 'package:ui_project/screens/detail_screen.dart';
import 'package:ui_project/screens/home_screen.dart';
import 'package:ui_project/screens/homefirst_screen.dart';
import 'package:ui_project/screens/signup_screen.dart';
import 'package:ui_project/screens/widgets/Tabbar_Widget.dart';
import 'package:ui_project/screens/widgets/bottom1_widget.dart';
import 'package:ui_project/screens/widgets/bottom_widget.dart';
import 'package:ui_project/screens/widgets/carosalslider_widget.dart';
import 'package:ui_project/screens/widgets/image_drag.dart';
import 'package:ui_project/screens/widgets/listview_widget.dart';
import 'package:ui_project/screens/widgets/phone_widget.dart';
import 'package:ui_project/screens/widgets/product_widget.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
         // initialRoute: "/",
         // routes: {
         //   '/':(context)=>HomeFirstScreen(),
         //   '/second':(context)=>DetailScreen()
         // },

        debugShowCheckedModeBanner: false,
        // home: HomeScreen()
        // home: CarosalSliderX(),
        // home: SignUp(),
        // home: HomeFirstScreen(),
        //  home: BottomWidget(),
        //  home: TabBarWidget(),
        // home: ListViewWidget(),
        // home: PhoneWidgetData(),
        // home: ProductWidget(),
        // home: BottomWidget1(),
        home: DetailScreen(),
        // home: ImageDrag(),



      );
  }

}