import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomWidget extends StatefulWidget {
  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int index = 0;
  final screens = [
    Center(
      child: Text(
        'Mail',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'chat',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'spaces',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'meet',
        style: TextStyle(fontSize: 20),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Container(
    //     child: screens[index],
    //   ),
    return NavigationBarTheme(
      data: NavigationBarThemeData(

          indicatorColor: Colors.transparent,
          backgroundColor: Colors.white,
          // indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.zero, ),
          labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 10))),
      child: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        height: 60,
        animationDuration: Duration(seconds: 1),
        backgroundColor: Colors.white,
        selectedIndex: index,

        onDestinationSelected: (index) => setState(() => this.index = index),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined,color: Colors.grey.shade400,),
            label: "home",
            selectedIcon: Icon(Icons.home,color: Colors.orangeAccent,),
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline_outlined,color: Colors.grey.shade400,),
            label: "",
            selectedIcon: Icon(Icons.favorite,color: Colors.orangeAccent,),
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline_rounded,color: Colors.grey.shade400,),
            label: "",
            selectedIcon: Icon(Icons.message,color: Colors.orangeAccent,),
          ),
          NavigationDestination(
            icon: Icon(Icons.person_2_outlined,color: Colors.grey.shade400,),
            label: "",
            selectedIcon: Icon(Icons.person,color: Colors.orangeAccent,),
          ),
        ],
      ),
    );
  }
}
