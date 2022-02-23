import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra/main.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehaviour(),
      child: ListView(
        children: [
          Column(
            children: [
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Explore on Myntra",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                height: 4,
                color: Colors.grey[200],
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.bag,
                  color: Colors.grey[400],
                ),
                title: Text(
                  "Myntra Mall",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  CommunityMaterialIcons.crown_outline,
                  color: Colors.grey[400],
                ),
                title: Text(
                  "Myntra Insider",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                trailing: Text(
                  "ENROLL NOW",
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  CupertinoIcons.gift,
                  color: Colors.grey[400],
                ),
                title: Text(
                  "Myntra Mall",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Container(
                height: 4,
                color: Colors.grey[200],
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.sun_min,
                  color: Colors.grey[400],
                ),
                title: Text(
                  "Play & Earn",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  CommunityMaterialIcons.shoe_sneaker,
                  color: Colors.grey[400],
                ),
                title: Text(
                  "Myntra Move",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Container(
                height: 4,
                color: Colors.grey[200],
              ),
              ListTile(
                leading: Icon(
                  CommunityMaterialIcons.email_open_outline,
                  color: Colors.grey[400],
                ),
                title: Text(
                  "Refer & Earn",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.qr_code,
                  color: Colors.grey[400],
                ),
                title: Text(
                  "Scan for Coupon",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  CupertinoIcons.star_circle,
                  color: Colors.grey[400],
                ),
                title: Text(
                  "Myntra Fashion Superstar",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Text(
                  "M",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey[400],
                  ),
                ),
                title: Text(
                  "Myntra Masterclass",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
