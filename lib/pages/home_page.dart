// import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_myapp/pages/login.dart';
import 'package:flutter_application_myapp/pages/login_page.dart';
import 'package:flutter_application_myapp/pages/widgets/drawer.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_session/flutter_session.dart';

// import 'package:http/http.dart' as http;
// import 'package:google_nav_bar/google_nav_bar.dart';
// String? finalEmail;

class homepage extends StatefulWidget {

  //  final Function _logout;
  // HomePage({required this._logout});
  
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 154, 2, 93),
                  Color.fromARGB(233, 21, 24, 24)
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              )),
              child: Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 10, bottom: 20, right: 10),
                child: Text(
                  'Copyright \u00a9 2023 The University of Haripur. All rights reserved.',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          ),
          // bottomNavigationBar: TabBar(tabs: <Widget>[Text('cOPYRIGHT 2023 ')]),
          appBar: AppBar(
            title: Text(
              "Student Portal",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            actions: [
              
              Padding(
                padding: EdgeInsets.only(top: 0, bottom: 0, right: 0),
                child: TextButton(
                    onPressed: () async {
                     
                      // _logout(context);

                      // final SharedPreferences sharedPreferences =
                      //     await SharedPreferences.getInstance();
                      // sharedPreferences.remove('rollno');
                      // Get.to(Login_page());

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (cpntext) => Login_page()));
                    },
                    child: Text(
                      'Logout ',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )),
              ),
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 154, 2, 93),
                  Color.fromARGB(233, 21, 24, 24)
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              )),
            ),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                //  FutureBuilder(
                //    future : FlutterSession().get('token'),
                //   builder: (context, snapshot){
                //   return Text(snapshot.hasData ? snapshot.data : 'Loading...');
                // }),

                // RadioListTile<ThemeMode>
                // (title: Text('light mode'),
                //   value: ThemeMode.light,
                //  groupValue: ThemeChanger.themeMode,
                //   onChanged: onChanged)
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 320,
                  height: 250,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 154, 2, 93),
                      Color.fromARGB(233, 26, 31, 31),
                    ],
                    end: Alignment.bottomLeft,
                    begin: Alignment.topRight,
                  )),
                ),
                SizedBox(
                  height: 28.0,
                ),

                // Container(
                //   width: 100,
                //   height: 100,
                //   child: Text(
                //     "Important Links",
                //     style: TextStyle(
                //         fontWeight: FontWeight.w900, color: Colors.grey),
                //   ),
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage(
                //         "assets/images/link.png",
                //       ),
                //     ),
                //   ),
                // ),
                // // ElevatedButton(onPressed: () {}, child: child),
                // SizedBox(
                //   height: 28.0,
                // ),
                // Container(
                //   width: 100,
                //   height: 100,
                //   child: Text(
                //     "UOH Gallery",
                //     style: TextStyle(
                //         fontWeight: FontWeight.w900, color: Colors.grey),
                //   ),
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage("assets/images/gallery.jpg"),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 28.0,
                // ),
                // CircleAvatar(
                //   radius: 30,
                //   backgroundColor: Color(0xff4c505b),
                //   child: IconButton(
                //     color: Colors.white,
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (cpntext) => LoginPage()));
                //     },
                //     icon: Icon(Icons.arrow_back),
                //   ),
                // ),
              ],
            ),
          ),
          drawer: Mydrawer()),
    );
  }

  // void _logout(BuildContext context) async {
  //   // Clear saved authentication token
  //   setState(() {
    
  //   });
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.remove('rollno');
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => Login_page()),
  //   );
  //   // Navigate back to login screen
  //   // Navigator.pushReplacementNamed(context, '/ Login_page()');
  // }
  
}



