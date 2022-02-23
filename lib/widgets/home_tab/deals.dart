import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imagesList = [
  "assets/images/home/deals/img_1.jpg",
  "assets/images/home/deals/img_2.jpg",
  "assets/images/home/deals/img_3.jpg",
  "assets/images/home/deals/img_4.jpg",
  "assets/images/home/deals/img_5.jpg",
  "assets/images/home/deals/img_6.jpg",
  "assets/images/home/deals/img_7.jpg",
];

class Deals extends StatefulWidget {
  Deals({Key? key}) : super(key: key);

  @override
  _DealsState createState() => _DealsState();
}

class _DealsState extends State<Deals> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TODO:Learnt: CarouselSlider
        CarouselSlider(
          options: CarouselOptions(
              height: 325,
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              }),
          items: imagesList
              .map(
                (item) => Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(item, fit: BoxFit.cover),
                ),
              )
              .toList(),
        ),

        //---> Doted part
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 23,
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imagesList.map((urlOfItem) {
                int index = imagesList.indexOf(urlOfItem);
                return Container(
                  width: 6,
                  height: 6,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Color(0xff80acd0)
                        : Color(0xffdfe1e3),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}
