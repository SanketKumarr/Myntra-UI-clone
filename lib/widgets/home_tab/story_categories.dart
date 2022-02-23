import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra/main.dart';

class StoryCategories extends StatelessWidget {
  const StoryCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehaviour(),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/home/story_categories/men_1.jpg"),
                          backgroundColor: Colors.transparent,
                          radius: 28,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            "MEN",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/home/story_categories/women_1.jpg"),
                          backgroundColor: Colors.transparent,
                          radius: 28,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            "WOMEN",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/home/story_categories/kids_1.jpg"),
                          backgroundColor: Colors.transparent,
                          radius: 28,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            "KIDS",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/categories/Beauty and personal care.png"),
                          backgroundColor: Colors.transparent,
                          radius: 28,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            "BEAUTY",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/categories/Home and living.png"),
                          backgroundColor: Colors.transparent,
                          radius: 28,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            "HOME",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/home/categories_to_bag/ctb_5_1.jpg"),
                          backgroundColor: Colors.transparent,
                          radius: 28,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            "FOOTWEAR",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/categories/Gadgets.png"),
                          backgroundColor: Colors.transparent,
                          radius: 28,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            "GADGETS",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                      right: 15,
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/home/categories_to_bag/ctb_9_1.jpg"),
                          backgroundColor: Colors.transparent,
                          radius: 28,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            "JEWELLERY",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
