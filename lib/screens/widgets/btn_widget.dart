import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BtnWidget extends StatelessWidget {
  const BtnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints.expand(width: 250, height: 40),
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Continue'),
          style: ElevatedButton.styleFrom(
              primary: Colors.orange.shade800,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)) ),

        ));
  }
}