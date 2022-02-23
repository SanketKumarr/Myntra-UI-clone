import 'package:flutter/material.dart';

class Sale extends StatelessWidget {
  const Sale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      // color: Colors.blueGrey,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/studio/sale2.jpg"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
