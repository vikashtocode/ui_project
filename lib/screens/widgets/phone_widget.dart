import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class phoneItem {
  final String assetImage;
  final String title;
  final String subTitle;

  const phoneItem(
      {required this.assetImage, required this.title, required this.subTitle});
}

List<phoneItem> items = [
  phoneItem(
      assetImage: "images/ImageBanner2.png",
      title: "Smartphone",
      subTitle: "18 Brands"),
  phoneItem(
      assetImage: "images/ImageBanner3.png",
      title: "Fashion",
      subTitle: "24 Brandd"),
  phoneItem(assetImage: "", title: "", subTitle: ""),
  phoneItem(assetImage: "", title: "", subTitle: ""),
];

Widget buildPhoneData({required phoneItem item}) => Row(
      children: [
        Stack(
          // fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                item.assetImage,
                fit: BoxFit.cover,
                width: 265,
                height: 108,
              ),
            ),
            Container(
              width: 265,
              height: 108,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20)),
              // ,
            ),
            Positioned(
              top: 20,
              left: 15,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    item.subTitle,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.7),
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );

class PhoneWidgetData extends StatefulWidget {
  @override
  State<PhoneWidgetData> createState() => _PhoneWidgetDataState();
}

class _PhoneWidgetDataState extends State<PhoneWidgetData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,

      decoration: BoxDecoration(color: Colors.white),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(12.0),
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 13.0,
            );
          },
          itemBuilder: (context, index) {
            return buildPhoneData(item: items[index]);
          },
          itemCount: 2),
    );
  }
}
