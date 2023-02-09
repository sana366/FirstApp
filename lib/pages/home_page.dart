import 'package:flutter/material.dart';
import 'package:flutter_application_myapp/pages/login_page.dart';
import 'package:flutter_application_myapp/pages/widgets/drawer.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          appBar: AppBar(
            title: Text("University Of Haripur"),
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 28.0,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.cyan,
                  alignment: Alignment.center,
                  child: Text(
                    "Important Links",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  height: 358.0,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff4c505b),
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (cpntext) => LoginPage()));
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
              ],
            ),
          ),
          drawer: Mydrawer()),
    );
  }
}
