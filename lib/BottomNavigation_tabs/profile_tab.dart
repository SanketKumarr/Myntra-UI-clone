import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myntra/main.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
          ),
        ),
      ),
      body: ScrollConfiguration(
        behavior: MyBehaviour(),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/drawer/cover_pic.jpg"),
                    fit: BoxFit.cover,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 210, left: 140),
                  child: Text(
                    "Sanket",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 145),
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 13,
              color: Colors.grey[200],
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(CupertinoIcons.cube_box),
              ),
              // leading: Icon(FontAwesomeIcons.boxOpen),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Orders",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Check your order status",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.headset_mic_outlined),
              ),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Help Center",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Help regarding your recent purchases",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(CommunityMaterialIcons.crown_outline),
              ),
              // leading: Icon(FontAwesomeIcons.boxOpen),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Myntra Insider",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Perks, Privilages, Pride",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(CommunityMaterialIcons.shoe_sneaker),
              ),
              // leading: Icon(FontAwesomeIcons.boxOpen),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Myntra Move",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Get rewarded to stay fit",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(CupertinoIcons.heart),
              ),
              // leading: Icon(FontAwesomeIcons.boxOpen),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Wishlist",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Your most loved styles",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(CommunityMaterialIcons.email_open_outline),
              ),
              // leading: Icon(FontAwesomeIcons.boxOpen),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Refer & Earn",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Invite friends and earn rewards",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 13,
              color: Colors.grey[200],
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.account_balance_wallet_outlined),
              ),
              // leading: Icon(FontAwesomeIcons.boxOpen),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Myntra Credit",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Manage all your refunds & gift cards",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(CupertinoIcons.rosette),
              ),
              // leading: Icon(FontAwesomeIcons.boxOpen),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "MynCash",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Earn Myncash s you shop and use them in checkout",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(CupertinoIcons.creditcard),
              ),
              // leading: Icon(FontAwesomeIcons.boxOpen),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Saved Cards",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Save your cards for faster checkout",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(CupertinoIcons.location),
              ),
              // leading: Icon(FontAwesomeIcons.boxOpen),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Address",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Save addresses for a hassle-free checkout",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(CommunityMaterialIcons.ticket_percent_outline),
              ),
              // leading: Icon(FontAwesomeIcons.boxOpen),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Coupons",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Manage coupons for additional discounts",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 13,
              color: Colors.grey[200],
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(CommunityMaterialIcons.notebook_edit_outline),
              ),
              // leading: Icon(FontAwesomeIcons.boxOpen),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Profile Details",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Change your profile details & password",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Divider(),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.app_settings_alt_sharp),
              ),
              // leading: Icon(FontAwesomeIcons.boxOpen),
              title: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  "Manage notification & app settings",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 13,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44.0),
              child: ListTile(
                title: Text(
                  "FAQs",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44.0),
              child: ListTile(
                title: Text(
                  "ABOUT US",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44.0),
              child: ListTile(
                title: Text(
                  "TERMS OF USE",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44.0),
              child: ListTile(
                title: Text(
                  "PRIVACY POLICY",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.grey[200],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, top: 25),
                  child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "LOG OUT",
                        style: TextStyle(
                          color: Colors.deepOrange,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.deepOrange),
                        fixedSize: Size(300, 40),
                      ),
                    ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
