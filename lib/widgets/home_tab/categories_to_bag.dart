import 'package:flutter/material.dart';

List<String> ctbTitle = [
  'Kurta Sets',
  "Dresses",
  "Jewellery",
];

class CategoriesToBag extends StatelessWidget {
  const CategoriesToBag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 590,
      color: Colors.white,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15),
            child: Text(
              "CATEGORIES TO BAG",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 18,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ctbCircle("Men's T-Shirts", "assets/images/home/categories_to_bag/ctb_1.jpg"),
                ctbCircle("Men's Trousers", "assets/images/home/categories_to_bag/ctb_3_1.jpg"),
                ctbCircle("Men's Shirts", "assets/images/home/categories_to_bag/ctb_2.jpg"),
                ctbCircle("Watches", "assets/images/home/categories_to_bag/ctb_4_1.jpg"),
                ctbCircle("Shoes", "assets/images/home/categories_to_bag/ctb_5_1.jpg"),
                ctbCircle("Headphones", "assets/images/home/categories_to_bag/ctb_6_1.jpg"),
                ctbCircle("Handbags", "assets/images/home/categories_to_bag/ctb_12_1.jpg"),
                ctbCircle("Jewellery", "assets/images/home/categories_to_bag/ctb_9_1.jpg"),
                ctbCircle("Kurta Sets", "assets/images/home/categories_to_bag/ctb_7_1.jpg"),
                ctbCircle("Dresses", "assets/images/home/categories_to_bag/ctb_8_1.jpg"),
                ctbCircle("Sarees", "assets/images/home/categories_to_bag/ctb_10.jpg"),
                ctbCircle("Tops", "assets/images/home/categories_to_bag/ctb_11.jpg"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget ctbCircle(String title, String image) {
    return Container(
      // color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 46,
            backgroundColor: Colors.pinkAccent,
            child: CircleAvatar(
              radius: 44,
              backgroundImage: AssetImage(image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize:
                    12, //TODO:BUG: If fontSize is removed, it'll throw an bottom overflowed error by 16 pixels
              ),
              // overflow: TextOverflow.ellipsis,
              // maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
