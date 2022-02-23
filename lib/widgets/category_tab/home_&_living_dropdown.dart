import 'package:flutter/material.dart';

class HomeAndLivingDropDown extends StatefulWidget {
  const HomeAndLivingDropDown({Key? key}) : super(key: key);

  @override
  _HomeAndLivingDropDownState createState() => _HomeAndLivingDropDownState();
}

class _HomeAndLivingDropDownState extends State<HomeAndLivingDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 110,
              color: Color(0xfff8f8f8),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 200.0, top: 10
              ),
              child: Container(
                width: 150,
                height: 110,
                child: Image.asset(
                  "assets/images/categories/Home and living.png",
                  // fit: BoxFit.cover,
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
                "Bedsheets, Blankets, Towels,...",
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
                    "HOME &\nLIVING",
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
