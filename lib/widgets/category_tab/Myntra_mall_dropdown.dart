import 'package:flutter/material.dart';

class MyntraMallDropdown extends StatefulWidget {
  const MyntraMallDropdown({Key? key}) : super(key: key);

  @override
  _MyntraMallDropdownState createState() => _MyntraMallDropdownState();
}

class _MyntraMallDropdownState extends State<MyntraMallDropdown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 110,
              color: Color(0xfff7dedb),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 200.0,
              ),
              child: Container(
                width: 150,
                height: 110,
                child: Image.asset(
                  "assets/images/categories/Myntra mall.png",
                  // fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 80),
              child: Text(
                "H&M, Nike, Smashbox, Max",
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
                    "MYNTRA\nMALL",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 10,
          color: Colors.grey[200],
        ),
      ],
    );

  }
}
