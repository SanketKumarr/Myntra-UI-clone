import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List<String> Deals = [
  "assets/images/studio/deals/deal1.jpg",
  "assets/images/studio/deals/deal2.jpg",
  "assets/images/studio/deals/deal3.jpg",
];

class BrandDeals extends StatefulWidget {
  const BrandDeals({Key? key}) : super(key: key);

  @override
  State<BrandDeals> createState() => _BrandDealsState();
}

class _BrandDealsState extends State<BrandDeals> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 180),
          child: Text(
            "Brand deals on spotlight",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 150,
            autoPlay: true,
            reverse: false,
            scrollDirection: Axis.horizontal,
            enableInfiniteScroll: true,
            viewportFraction: 0.35,
            onPageChanged: (index, reason) {
              _currentIndex = index;
            },
          ),
          items: Deals.map(
            (items) => CircleAvatar(
              backgroundImage: AssetImage(items),
              radius: 50,
            ),
          ).toList(),
        ),
      ],
    );
  }
}
