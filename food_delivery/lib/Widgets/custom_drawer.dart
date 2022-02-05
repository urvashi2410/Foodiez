import 'package:flutter/material.dart';
import 'package:food_delivery/Constants/colors.dart';
import 'package:food_delivery/Firebase/authentication.dart';

Drawer myDrawer(
    {String urlImg = "",
    String name = "",
    String email = "",
    required BuildContext context}) {
  return Drawer(
    child: Container(
      color: AppColor.orange.withOpacity(0.9),
      child: ListView(
        children: [
          DrawerHeader(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 46,
                  child: Container(
                    child: CircleAvatar(
                      radius: 43,
                      backgroundImage: NetworkImage(urlImg),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      email,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            textColor: Colors.white,
            iconColor: Colors.white,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorite"),
            textColor: Colors.white,
            iconColor: Colors.white,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            textColor: Colors.white,
            iconColor: Colors.white,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            textColor: Colors.white,
            iconColor: Colors.white,
          ),
          InkWell(
            onTap: () => Authentication.signOut(context: context),
            child: ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text("Logout"),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
