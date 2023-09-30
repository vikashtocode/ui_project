import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class dashedButton extends StatelessWidget {
  const dashedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){},child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: 7,height: 7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.5),
            color: Colors.grey.shade400
        ),

      ),
    ),);
  }
}