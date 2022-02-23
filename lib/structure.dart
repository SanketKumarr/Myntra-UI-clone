import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myntra/BottomNavigation_tabs/categories_tab.dart';
import 'package:myntra/BottomNavigation_tabs/explore_tab.dart';
import 'package:myntra/BottomNavigation_tabs/home_tab.dart';
import 'package:myntra/BottomNavigation_tabs/profile_tab.dart';
import 'package:myntra/BottomNavigation_tabs/studio_tab.dart';
import 'myntra_icons_icons.dart';


class Structure extends StatefulWidget {
  const Structure({Key? key}) : super(key: key);

  @override
  _StructureState createState() => _StructureState();
}

class _StructureState extends State<Structure> {

  int _currentIndex = 0;
  final tabs = [
    Home(),
    Categories(),
    Studio(),
    Explore(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      //TODO: Learnt:-> Bottom navigation bar.
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: "Studio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],

      ),
    );
  }
}
