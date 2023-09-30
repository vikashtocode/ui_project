import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_project/screens/widgets/bottom_widget.dart';
import 'package:ui_project/screens/widgets/listview_widget.dart';
import 'package:ui_project/screens/widgets/phone_widget.dart';
import 'package:ui_project/screens/widgets/product_widget.dart';

class HomeFirstScreen extends StatefulWidget {
  @override
  State<HomeFirstScreen> createState() => _HomeFirstScreenState();
}
class _HomeFirstScreenState extends State<HomeFirstScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Container(
              margin: EdgeInsets.only(left: 13),
              child: CupertinoSearchTextField(
                placeholder: 'Search product',
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            titleSpacing: 10,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade100),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.grey,
                          size: 25,
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade100),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.grey,
                          ))),
                    Positioned(
                        top:0,
                        right: 0,
                        child:Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(color: Colors.red.shade400,borderRadius: BorderRadius.circular(7.5)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Positioned(
                               top: 0,
                               right: 0,
                              child: Text("2",style: TextStyle(fontSize: 10),),
                            ),
                          ),
                        )
                    ),

                  ],

                ),
              )
            ]),

        body: SingleChildScrollView(

          child: Column(
            children: [
              SizedBox(height: 2,),
              Center(
                child: Container(
                  width: 385,
                  height: 120,
                  child: Card(
                    color: Colors.deepPurple.shade900.withOpacity(0.8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    margin: EdgeInsets.all(16.0),
                    elevation: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text('A Summer Surprize',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 12)),
                        ),
                        SizedBox(height: 3),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Cashback 20%',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontFamily: "Mulish"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(width: double.infinity, child: ListViewWidget()),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        "Special for you",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Mulish",
                            color: Colors.black54),
                      ),
                      Spacer(),
                      Text(
                        'See More',
                        style: TextStyle(color: Colors.black26, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                width: double.infinity,
                child: PhoneWidgetData(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        "Popular Product",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Mulish",
                            color: Colors.black54),
                      ),
                      Spacer(),
                      Text(
                        'See More',
                        style: TextStyle(color: Colors.black26, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18),
                // width: double.infinity,
                child: ProductWidget(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomWidget());
  }
}

