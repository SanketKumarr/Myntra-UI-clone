import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra/main.dart';
import 'package:myntra/widgets/category_tab/Myntra_mall_dropdown.dart';
import 'package:myntra/widgets/category_tab/Theme_stores_dropdown.dart';
import 'package:myntra/widgets/category_tab/beauty_&_personalCare_dropdown.dart';
import 'package:myntra/widgets/category_tab/gadgets_dropdown.dart';
import 'package:myntra/widgets/category_tab/home_&_living_dropdown.dart';
import 'package:myntra/widgets/category_tab/kids_dropdown.dart';
import 'package:myntra/widgets/category_tab/men_dropdown.dart';
import 'package:myntra/widgets/category_tab/plusSize_dropdown.dart';
import 'package:myntra/widgets/category_tab/women_dropdown.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehaviour(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Categories",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.heart,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.bag,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            WomenDropDown(),
            MenDropDown(),
            KidsDropDown(),
            BeautyAndPersonalCareDropDown(),
            HomeAndLivingDropDown(),
            GadgetsDropDown(),
            PlusSizeDropDown(),
            ThemeStoresDropDown(),
            MyntraMallDropdown(),
          ],
        ),
      ),
    );
  }
  Widget expandedCategory(String type) {
    return ExpansionTile(
      title: Text(type),
    );
  }
  Widget expCategoryNoIcon(String type) {
    return ExpansionTile(
      title: Text(type),
      iconColor: Colors.transparent,
      collapsedIconColor: Colors.transparent,
    );
  }
}
