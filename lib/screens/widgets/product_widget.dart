




import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_project/screens/detail_screen.dart';

class productItem {
  final String assetImage;
  final String title;
  final String price;
  final Icon icon;

  const productItem(
      {required this.assetImage,
      required this.title,
      required this.price,
      required this.icon});
}

List<productItem> items = [
  productItem(
      assetImage: "images/ImagePopularProduct1.png",
      title: "Wirless Controller for \n PS4",
      price: "\$64.99",
      icon: Icon(
        Icons.favorite,
        color: Colors.red,
        size: 16,
        // shadows: [Shadow(color: Colors.red, blurRadius: 10.0)],
      )
  ),
  productItem(
      assetImage: "images/ImagePopularProduct2.png",
      title: "Nike Sports White \n man paint",
      price: "\$50.00",
      icon: Icon(
        Icons.favorite,
        color: Colors.red,
        size: 16,
      )),
  productItem(
      assetImage: "images/ImagePopularProduct3.png",
      title: "Nike Sports White \n man paint",
      price: "\$50.00",
      icon: Icon(
        Icons.favorite,
        color: Colors.red,
        size: 16,
      )),
];

Widget buildProduct({required productItem item}) => Row(
      children: [
        Container(
          height: 300,
          width: 140,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              ClipRRect(
                  child: Container(
                height: 130,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12)),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    item.assetImage,
                    fit: BoxFit.contain,
                    height: 90,
                    width: 95,
                  ),
                ),
              )),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  item.title,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    color: Colors.black38,
                    fontFamily: "Mulish",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    Text(item.price,
                        style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.none,
                            color: Color(0xFFf48c06))),
                    Spacer(),
                    Container(
                      height:25,
                      width: 25,
                      decoration: BoxDecoration(color: Colors.red.shade50,borderRadius: BorderRadius.circular(12.5)),
                      child: Align(alignment: Alignment.center,child: item.icon) ,
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );

class ProductWidget extends StatefulWidget {
  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return buildProduct(item: items[index]);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 15,
              );
            },
            itemCount: 3));
  }
}
