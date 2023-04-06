import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        'https://upload.wikimedia.org/wikipedia/commons/9/97/Lamborghini_Aventador_LP700-4_Orange.jpg';
    return Drawer(
      child: Container(
        color: Colors.cyan,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Ahsan Malik",
                ),
                accountEmail: Text(
                  "ahsan@gmail.com",
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.black,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.5,
                ),
                textColor: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.black,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.5,
                ),
                textColor: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.black,
                ),
                title: Text(
                  "email",
                  textScaleFactor: 1.5,
                ),
                textColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
