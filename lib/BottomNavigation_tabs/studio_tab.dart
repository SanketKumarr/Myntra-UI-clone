import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra/main.dart';
import 'package:myntra/widgets/separation.dart';
import 'package:myntra/widgets/studio_tab/banner.dart';
import 'package:myntra/widgets/studio_tab/best_influencers.dart';
import 'package:myntra/widgets/studio_tab/brand_deals.dart';
import 'package:myntra/widgets/studio_tab/sale.dart';

class Studio extends StatelessWidget {
  const Studio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehaviour(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Studio",
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 16,
            ),
          ),
          elevation: 1.5,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.bookmark),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.search),
            ),
          ],
        ),
        body: detailedStudio(),
      ),
    );
  }

  Widget detailedStudio() {
    return ListView(
      children: [
        CustomBanner(),
        Separation(),
        BestInfluencers(),
        Separation(),
        Sale(),
        Separation(),
        BrandDeals(),
        Separation(),

      ],
    );
  }
}
