// import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_myapp/pages/home_page.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.cyan,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Center(
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    "UOH",
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 237, 240),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text(
                    "webmaster@uoh.edu.pk",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 170,
                    backgroundImage:
                        Image.asset('assets/images/profile.jpg').image,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (cpntext) => homepage()));
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.person_2_square_stack_fill,
                color: Colors.white,
              ),
              title: Text(
                "faculties",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.person_3_fill,
                color: Colors.white,
              ),
              title: Text(
                "Administration",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.book_circle_fill,
                color: Colors.white,
              ),
              title: Text(
                "Academics",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.book_solid,
                color: Colors.white,
              ),
              title: Text(
                "Examinations",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Divider(),
            SizedBox(
              height: 250.0,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.arrow_3_trianglepath,
                color: Colors.white,
              ),
              title: Text(
                "Exit",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (cpntext) => homepage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
