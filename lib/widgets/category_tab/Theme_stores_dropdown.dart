import 'package:flutter/material.dart';

class ThemeStoresDropDown extends StatefulWidget {
  const ThemeStoresDropDown({Key? key}) : super(key: key);

  @override
  _ThemeStoresDropDownState createState() => _ThemeStoresDropDownState();
}

class _ThemeStoresDropDownState extends State<ThemeStoresDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 110,
              color: Color(0xffffdbe7),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 160.0,
              ),
              child: Container(
                width: 150,
                height: 110,
                child: Image.asset(
                  "assets/images/categories/Theme stores.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 180.0, top: 37),
              child: Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 80),
              child: Text(
                "Weeding, Party, Sports, Han...",
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
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  iconColor: Colors.transparent,
                  collapsedIconColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  collapsedBackgroundColor: Colors.transparent,
                  title: Text(
                    "THEME\nSTORES",
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
                    ListTile(
                      title: Text(
                        "A",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "B",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
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
}
