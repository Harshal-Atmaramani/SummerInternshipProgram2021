

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
            curve: Curves.elasticIn,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/images/linux_world_logo.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  child: Text(
                    "Summer Internship Program 2021",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "Task 11",
                  style: TextStyle(
                      fontSize: size.width * 0.06, color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            dense: true,
            // leading: ,
            title: Text(
              'Linux World Team',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 2.5,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    // return EditBasicI();
                  },
                ),
              );
            },
          ),
          ListtileDivider(),
          SizedBox(
            height: size.height * 0.02,
          ),
        ],
      ),
    );
  }
}

class ListtileDivider extends StatelessWidget {
  const ListtileDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 2,
      thickness: 2,
      indent: 8,
      endIndent: 8,
    );
  }
}
