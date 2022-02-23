import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WomenDropDown extends StatefulWidget {
  const WomenDropDown({Key? key}) : super(key: key);

  @override
  _WomenDropDownState createState() => _WomenDropDownState();
}

class _WomenDropDownState extends State<WomenDropDown> {
  // int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 110,
              color: Color(0xffe9d6ce),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 200.0,
              ),
              child: Container(
                width: 150,
                height: 110,
                child: Image.asset(
                  "assets/images/categories/women.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 87.0, top: 37),
              child: Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 65),
              child: Text(
                "Kurats & Suits, Top & Tees,...",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 13,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Theme(
                //TODO: Learnt:-> ExpansionTile and it's divider.
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  iconColor: Colors.transparent,
                  collapsedIconColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  collapsedBackgroundColor: Colors.transparent,
                  title: Text(
                    "WOMEN",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    expandedCategory("Westernwear"),
                    expandedCategory("Ethnic & Fusionwear"),
                    expandedCategory("Footwear"),
                    expandedCategory("Lingerie"),
                    expandedCategory("Bags, Wallets & Clutches"),
                    expandedCategory("Jewellery"),
                    expandedCategory("Other Accessories"),
                    expandedCategory("Beauty & Personal Care"),
                    expandedCategory("Sports & Activewear"),
                    expandedCategory("Luggage & Trolleys"),
                    expandedCategory("Sleepwear & Loungewear"),
                    expandedCategory("Watches"),
                    expCategoryNoIcon("Myntra Stylecast"),
                    expCategoryNoIcon("Winterwear Store"),
                    expCategoryNoIcon("Gift Card"),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 2,
          color: Colors.white,
        ),
      ],
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
