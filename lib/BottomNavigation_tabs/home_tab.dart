import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra/main.dart';
import 'package:myntra/widgets/home_tab/beauty_&_personal_care.dart';
import 'package:myntra/widgets/home_tab/categories_to_bag.dart';
import 'package:myntra/widgets/home_tab/deals.dart';
import 'package:myntra/widgets/home_tab/home_drawer.dart';
import 'package:myntra/widgets/home_tab/story_categories.dart';
import 'package:myntra/widgets/home_tab/top_picks.dart';
import 'package:myntra/widgets/separation.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: MyBehaviour(),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 145,
              iconTheme: IconThemeData(color: Colors.black),
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: StoryCategories(),
              ),
              title: Transform.translate(
                // To shift the title closer/far away to drawer
                offset: Offset(-25, 0),
                child: Container(
                  child: Row(
                    children: [
                      CachedNetworkImage(
                        imageUrl: "http://businessnewsthisweek.com/wp-content/uploads/2021/02/Myntra-logo-678x509.png",
                        height: 20,
                      ),
                      // Image.network(
                      //   "http://businessnewsthisweek.com/wp-content/uploads/2021/02/Myntra-logo-678x509.png",
                      //   height: 20,
                      // ),
                      // Image.asset("assets/images/home/Myntra_logo.png"),
                      Text(
                        "INSIDER",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.amberAccent[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                Icon(CupertinoIcons.search),
                SizedBox(
                  width: 19,
                ),
                Icon(CupertinoIcons.bell),
                SizedBox(
                  width: 19,
                ),
                Icon(CupertinoIcons.heart),
                SizedBox(
                  width: 19,
                ),
                Icon(CupertinoIcons.bag),
                SizedBox(
                  width: 19,
                ),
              ],
            ),
            detailedHome(),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  Widget detailedHome() => SliverToBoxAdapter(
        child: Column(
          children: [
            Deals(),
            Separation(),
            TopPicks(),
            Separation(),
            BestOfBeautyAndPersonalCare(),
            Separation(),
            CategoriesToBag(),
            end(),
            // SizedBox(
            //   height: 100,
            // ),
          ],
        ),
      );

  Widget end() {
    return Container(
      width: 400,
      height: 125,
      color: Color(0xffdfe1e3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("----------------"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              '"Dressing well is a form of good manner."',
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              "Tom Ford",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//"http://businessnewsthisweek.com/wp-content/uploads/2021/02/Myntra-logo-678x509.png",
