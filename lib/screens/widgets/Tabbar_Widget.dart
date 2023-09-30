import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
 with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {

      });
    });
  }
  @override
  void dispose() {
     controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         child: Column(
           children: [
             Card(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
               elevation: 5,
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.black38.withOpacity(0.5),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: TabBar(
                   // indicator: BoxDecoration(
                   //   borderRadius: BorderRadius.circular(12),
                   //   color: Colors.orange
                   // ),
                   controller: controller,
                   isScrollable: true,
                   labelPadding: EdgeInsets.symmetric(horizontal: 30),
                   tabs: [
                     Tab(child: Text('home'), icon: Icon(Icons.home),),
                     Tab(child: Text('home'), icon: Icon(Icons.home),),
                     Tab(child: Text('home'), icon: Icon(Icons.home),)
                   ],
                 ),
               ),
             ),
             Expanded(
                 child: TabBarView(
                   controller: controller,
                   physics: BouncingScrollPhysics(),
                   children: [

                   ],
                 )
             ),

           ],
         ),
       ),
    );
  }
}

// child: DefaultTabController(
// length: 3,
// child: TabBar(
//
// tabs: [
// Tab(text: '',icon: Icon(Icons.home),),
// Tab(text: '',icon: Icon(Icons.home),),
// Tab(text: '',icon: Icon(Icons.home),),
// ],
// ),


// appBar: AppBar(
// // title: Text("${controller.index + 1}"),
// // centerTitle: true,
// bottom: TabBar(
// controller: controller,
// tabs: [
// Tab(text: 'home', icon: Icon(Icons.home),),
// Tab(text: 'home', icon: Icon(Icons.home),),
// Tab(text: 'home', icon: Icon(Icons.home),),
// ],
// ),
// ),
// body: Container(
//
// child: TabBarView(
// controller: controller,
// children: [
// Center(child: Text('Tab 1 content'),),
// Center(child: Text('Tab 1 content'),),
// Center(child: Text('Tab 1 content'),),
// // firstPage(),other screen are provided
// ],
// ),
// ),