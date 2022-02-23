import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myntra/json_serialization/json_std_data.dart';

List<String> Influencer = [
  "assets/images/studio/influencers/infl_6.jpg",
  "assets/images/studio/influencers/infl_7.jpg",
  "assets/images/studio/influencers/infl_8.jpg",
  "assets/images/studio/influencers/infl_4.jpg",
  "assets/images/studio/influencers/infl_9.jpg",
];
//
// List<String> Names = ["A", "B", "C", "D", "E"];

class BestInfluencers extends StatefulWidget {
  const BestInfluencers({Key? key}) : super(key: key);

  @override
  _BestInfluencersState createState() => _BestInfluencersState();
}

class _BestInfluencersState extends State<BestInfluencers> {
  int _currentIndex = 0;
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var dataJson = await rootBundle.loadString("assets/data/studio_data.json");
    // Decoded data:
    var decodedData = jsonDecode(dataJson);
    var productsData = decodedData["stdData"];
    Data.items = List.from(productsData)
        .map<Item>((item) => Item.fromJson(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 180),
          child: Text(
            "Best of Influencers Today",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0, -35),
          child: Container(
            color: Colors.transparent,
            child: CarouselSlider(
              options: CarouselOptions(
                  height: 150,
                  autoPlay: true,
                  reverse: false,
                  scrollDirection: Axis.horizontal,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.35,
                  onPageChanged: (index, reason) {
                    _currentIndex = index;
                  }),
              items: Influencer.map((item) => Transform.translate(
                    offset: Offset(0, 25),
                    child: Container(
                      // color: Colors.blueGrey,
                      child: CircleAvatar(
                        backgroundColor: Colors.pink,
                        radius: 47,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(item),
                          radius: 45,
                        ),
                      ),
                    ),
                  )).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
