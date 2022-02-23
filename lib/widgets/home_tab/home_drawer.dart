import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra/BottomNavigation_tabs/profile_tab.dart';
import 'package:myntra/main.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehaviour(),
      child: Drawer(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
              },
              child: Stack(
                children: [
                  Container(
                    // color: Colors.pink,
                    height: 140,
                    padding: EdgeInsets.zero,
                    child: DrawerHeader(
                      padding: EdgeInsets.zero,
                      child: UserAccountsDrawerHeader(
                        accountEmail: null,
                        accountName: Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Row(
                            children: [
                              Text(
                                "Sanket",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/drawer/cover_pic.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 17),
                    child: Container(
                      width: 60,
                      height: 60,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.category_outlined,
                color: Colors.grey[800],
              ),
              title: Text(
                "Shop by Categories",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.store),
              title: Text(
                "Theme Stores",
                style: TextStyle(
                  // fontWeight: FontWeight.w600,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(CupertinoIcons.cube_box),
              title: Text(
                "Orders",
                style: TextStyle(
                  // fontWeight: FontWeight.w600,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 56.0),
                child: Text(
                  "FAQs",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 56.0),
                child: Text(
                  "CONTACT US",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 56.0),
                child: Text(
                  "LEGAL",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
