
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_myapp/pages/home_page.dart';
import 'package:flutter_application_myapp/pages/view_profile.dart';

// import '../profile.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  List<String> items = <String>['View Profile', 'Change Password'];
  TextEditingController _name = TextEditingController();
  TextEditingController _Fathername = TextEditingController();
  TextEditingController _CNIC = TextEditingController();
  TextEditingController _Cellno = TextEditingController();
  TextEditingController _Email = TextEditingController();
  TextEditingController _phoneno = TextEditingController();
  TextEditingController _Domicile = TextEditingController();
  TextEditingController _Paddress = TextEditingController();
  TextEditingController _rollno = TextEditingController();
  TextEditingController _regno = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // List profileItem = ["View Profile", " Change Password"];
    return Drawer(
      // shadowColor: Color.fromARGB(146, 12, 12, 12),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 154, 2, 93),
            Color.fromARGB(233, 26, 31, 31),
          ],
          end: Alignment.bottomLeft,
          begin: Alignment.topRight,
        )),
        child: ListView(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
            right: 10,
            left: 10,
          ),
          children: [
            // DrawerHeader(
            //   padding: EdgeInsets.zero,
            //   child: Center(
            //     child: UserAccountsDrawerHeader(
            //       margin: EdgeInsets.zero,
            //       accountName: Text(
            //         "UOH",
            //         style: TextStyle(
            //             color: Color.fromARGB(255, 236, 237, 240),
            //             fontSize: 30,
            //             fontWeight: FontWeight.bold),
            //       ),
            //       accountEmail: Text(
            //         "webmaster@uoh.edu.pk",
            //         style: TextStyle(color: Colors.white),
            //       ),
            //       currentAccountPicture: CircleAvatar(
            //         radius: 170,
            //         backgroundImage:
            //             Image.asset('assets/images/profile.jpg').image,
            //       ),
            //     ),
            //   ),
            // ),
            ListTile(
              leading: Image.asset(
                "assets/images/logo.png",
                width: 55,
                height: 55,
              ),
              title: Text(
                "Student Portal",
                textScaleFactor: 1.4,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: ClipRRect(
                  // borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                "assets/images/pic.webp",
                width: 48,
                height: 48,
              )),
              title: Text(
                "ABDULLAH",
                textScaleFactor: 1.3,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            // ListTile(
            //   leading: Image.asset("assets/images/gallery.jpg"),
            //   title: Text(
            //     "Student Name",
            //     textScaleFactor: 1.5,
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            ListTileTheme(
              contentPadding: EdgeInsets.all(7),
              dense: true,
              horizontalTitleGap: 15.0,
              minLeadingWidth: 15,
              child: ListTile(
                contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8),
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                  size: 20,
                ),
                title: Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Text(
                    "Dashboard",
                    textScaleFactor: 1,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cpntext) => homepage()));
                },
              ),
            ),

            Theme(
              data: ThemeData().copyWith(
                  dividerColor: Colors.transparent,
                  unselectedWidgetColor: Colors.white,
                  colorScheme: ColorScheme.light(primary: Colors.black)),
              child: ListTileTheme(
                contentPadding: EdgeInsets.all(7),
                dense: true,
                horizontalTitleGap: 15.0,
                minLeadingWidth: 15,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 0,
                    bottom: 0,
                  ),
                  child: ExpansionTile(
                    leading: Icon(
                      CupertinoIcons.profile_circled,
                      color: Colors.white,
                      size: 22,
                    ),
                    title: Text(
                      "Profile",
                      textScaleFactor: 1.1,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                    children: [
                      ListTileTheme(
                        contentPadding: EdgeInsets.all(7),
                        dense: true,
                        horizontalTitleGap: 15.0,
                        minLeadingWidth: 15,
                        child: ListTile(
                          // dense: true,
                          // contentPadding: EdgeInsets.only(left: 40),
                          title: Text(
                            "View Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          leading: Padding(
                            padding: EdgeInsets.only(right: 0, left: 30),
                            child: Icon(
                              Icons.keyboard_arrow_right_outlined,
                            ),
                          ),
                          iconColor: Colors.white,
                          tileColor: Colors.white,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (cpntext) => Profile_page(
                                          name: _name.text,
                                          Fathername: _Fathername.text,
                                          CNIC: _CNIC.text,
                                          Cellno: _Cellno.text,
                                          Email: _Email.text,
                                          phoneno: _phoneno.text,
                                          Domicile: _Domicile.text,
                                          Paddress: _Paddress.text,
                                          rollno: _rollno.text,
                                          regno: _regno.text,
                                        )));
                          },
                        ),
                      ),
                      ListTileTheme(
                        contentPadding: EdgeInsets.all(7),
                        dense: true,
                        horizontalTitleGap: 15.0,
                        minLeadingWidth: 15,
                        child: ListTile(
                          // dense: true,
                          // contentPadding: EdgeInsets.only(left: 40),
                          title: Text(
                            "Change Password",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          leading: Padding(
                            padding: EdgeInsets.only(left: 30, right: 0),
                            child: Icon(
                              Icons.keyboard_arrow_right_outlined,
                            ),
                          ),
                          iconColor: Colors.white,
                          tileColor: Colors.white,
                          onTap: () {},
                        ),
                      ),
                    ],
                    // onTap: () {

                    //   // Navigator.push(context,
                    //   //     MaterialPageRoute(builder: (cpntext) => homepage()));
                    // },
                    // trailing: DropdownButtonHideUnderline(
                    //   child: DropdownButton<String>(
                    //     icon: Icon(Icons.keyboard_arrow_left_outlined),
                    //     iconEnabledColor: Colors.white,
                    //     iconDisabledColor: Colors.black,
                    //     onChanged: (value) {},
                    //     items: items.map<DropdownMenuItem<String>>(
                    //       (String value) {
                    //         bool isDense = true;
                    //         bool isExoanded = true;
                    //         return DropdownMenuItem<String>(
                    //           value: value,
                    //           child: Text(value),
                    //         );
                    //       },
                    //     ).toList(),
                    //   ),
                    // ),

                    // iconColor: Colors.white,
                  ),
                ),
              ),
            ),

            ListTileTheme(
              contentPadding: EdgeInsets.all(7),
              dense: true,
              horizontalTitleGap: 15.0,
              minLeadingWidth: 15,
              child: ListTile(
                contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8),
                leading: Icon(
                  CupertinoIcons.doc_on_doc_fill,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  "Semesters",
                  textScaleFactor: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            ListTileTheme(
              contentPadding: EdgeInsets.all(7),
              dense: true,
              horizontalTitleGap: 15.0,
              minLeadingWidth: 15,
              child: ListTile(
                contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8),
                leading: Icon(
                  CupertinoIcons.money_dollar,
                  color: Colors.white,
                  size: 22,
                ),
                title: Text(
                  "Fees",
                  textScaleFactor: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            Theme(
              data: ThemeData().copyWith(
                  dividerColor: Colors.transparent,
                  unselectedWidgetColor: Colors.white,
                  colorScheme: ColorScheme.light(primary: Colors.black)),
              child: ListTileTheme(
                contentPadding: EdgeInsets.all(7),
                dense: true,
                horizontalTitleGap: 15.0,
                minLeadingWidth: 15,
                child: Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 0),
                  child: ExpansionTile(
                    leading: Icon(
                      CupertinoIcons.doc_on_doc_fill,
                      color: Colors.white,
                      size: 20,
                    ),
                    title: Text(
                      "QEC",
                      textScaleFactor: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    children: [
                      ListTileTheme(
                        contentPadding: EdgeInsets.all(7),
                        dense: true,
                        horizontalTitleGap: 15.0,
                        minLeadingWidth: 15,
                        child: ListTile(
                          title: Text(
                            "Instructor Evaluation",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          leading: Padding(
                            padding: EdgeInsets.only(left: 30, right: 0),
                            child: Icon(
                              Icons.keyboard_arrow_right_outlined,
                            ),
                          ),
                          iconColor: Colors.white,
                          tileColor: Colors.white,
                          onTap: () {},
                        ),
                      ),
                      ListTileTheme(
                        contentPadding: EdgeInsets.all(7),
                        dense: true,
                        horizontalTitleGap: 15.0,
                        minLeadingWidth: 15,
                        child: ListTile(
                          title: Text(
                            "Evaluation Report",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          leading: Padding(
                            padding: EdgeInsets.only(left: 30, right: 0),
                            child: Icon(
                              Icons.keyboard_arrow_right_outlined,
                            ),
                          ),
                          iconColor: Colors.white,
                          tileColor: Colors.white,
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // ListTile(
            //   leading: Icon(
            //     CupertinoIcons.book_solid,
            //     color: Colors.white,
            //     size: 20,
            //   ),
            //   title: Text(
            //     "Examinations",
            //     textScaleFactor: 1,
            //     style: TextStyle(
            //         color: Colors.white, fontWeight: FontWeight.normal),
            //   ),
            // ),

            // SizedBox(
            //   height: 250.0,
            // ),
            Theme(
              data: ThemeData().copyWith(
                  dividerColor: Colors.transparent,
                  unselectedWidgetColor: Colors.white,
                  colorScheme: ColorScheme.light(primary: Colors.black)),
              child: ListTileTheme(
                contentPadding: EdgeInsets.all(7),
                dense: true,
                horizontalTitleGap: 15.0,
                minLeadingWidth: 15,
                child: Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 0),
                  child: ExpansionTile(
                    leading: Icon(
                      CupertinoIcons.doc_on_doc_fill,
                      color: Colors.white,
                      size: 20,
                    ),
                    title: Text(
                      "Liabrary",
                      textScaleFactor: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    children: [
                      ListTileTheme(
                        contentPadding: EdgeInsets.all(7),
                        dense: true,
                        horizontalTitleGap: 15.0,
                        minLeadingWidth: 15,
                        child: ListTile(
                          title: Text(
                            "OPAC",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          leading: Padding(
                            padding: EdgeInsets.only(left: 30, right: 0),
                            child: Icon(
                              Icons.keyboard_arrow_right_outlined,
                            ),
                          ),
                          iconColor: Colors.white,
                          tileColor: Colors.white,
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTileTheme(
              contentPadding: EdgeInsets.all(7),
              dense: true,
              horizontalTitleGap: 15.0,
              minLeadingWidth: 15,
              child: ListTile(
                contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8),
                leading: Icon(
                  CupertinoIcons.doc_on_doc_fill,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  "Reset Password",
                  textScaleFactor: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                height: 130,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black,
                    ),
                    boxShadow: [BoxShadow(blurRadius: 8, spreadRadius: 5)]),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "UOH :: CMS\n Copyright \u00a9 2022-23\n The University of Haripur",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
