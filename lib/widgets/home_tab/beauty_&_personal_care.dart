import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  "assets/images/home/beauty_and_personal_care/bpc_1.jpg",
  "assets/images/home/beauty_and_personal_care/bpc_2.jpg",
  "assets/images/home/beauty_and_personal_care/bpc_3.jpg",
  "assets/images/home/beauty_and_personal_care/bpc_4.jpg",
  "assets/images/home/beauty_and_personal_care/bpc_5.jpg",
  "assets/images/home/beauty_and_personal_care/bpc_6.jpg",
  "assets/images/home/beauty_and_personal_care/bpc_7.jpg",
];

class BestOfBeautyAndPersonalCare extends StatefulWidget {
  const BestOfBeautyAndPersonalCare({Key? key}) : super(key: key);

  @override
  _BestOfBeautyAndPersonalCareState createState() =>
      _BestOfBeautyAndPersonalCareState();
}

class _BestOfBeautyAndPersonalCareState
    extends State<BestOfBeautyAndPersonalCare> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 315,
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 10),
          child: Text(
            "BEST FOR BEAUTY AND PERSONAL CARE",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: CarouselSlider(
            options: CarouselOptions(
                autoPlay: false,
                height: 255,
                reverse: false,
                scrollDirection: Axis.horizontal,
                enableInfiniteScroll: false,
                viewportFraction: 0.83,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                }),
            items: imgList
                .map(
                  (item) => Align(
                    alignment: Alignment(-6.4, 0),
                    child: Container(
                      width: 290,
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
