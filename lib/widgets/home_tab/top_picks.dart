import 'package:flutter/material.dart';

class TopPicks extends StatelessWidget {
  const TopPicks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          width: 500,
          height: 410,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 10),
                child: Text(
                  "TOP PICKS",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.all(5),
                  children: [
                    Container(
                      child:
                          Image.asset("assets/images/home/top_picks/top_picks_2.jpg"),
                    ),
                    Container(
                      child:
                          Image.asset("assets/images/home/top_picks/top_picks_3.jpg"),
                    ),
                    Container(
                      child:
                          Image.asset("assets/images/home/top_picks/top_picks_4.jpg"),
                    ),
                    Container(
                      child:
                          Image.asset("assets/images/home/top_picks/top_picks_1.jpg"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
