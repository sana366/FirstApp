import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_myapp/pages/widgets/drawer.dart';

import 'package:http/http.dart';

class Profile_page extends StatefulWidget {
  String name;
  String Fathername;
  String CNIC;
  String Cellno;
  var Email;
  dynamic Whatsapp;
  String Domicile;
  String Paddress;

  Profile_page(
      {required this.name,
      required this.Fathername,
      required this.CNIC,
      required this.Cellno,
      required this.Email,
      dynamic this.Whatsapp,
      required this.Domicile,
      required this.Paddress});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  int _value = 1;
  int _Value = 1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      TextEditingController _name = TextEditingController();
      TextEditingController _Fathername = TextEditingController();
      TextEditingController _CNIC = TextEditingController();
      TextEditingController _Cellno = TextEditingController();
      TextEditingController _Email = TextEditingController();
      TextEditingController _Whatsapp = TextEditingController();
      TextEditingController _Domicile = TextEditingController();
      TextEditingController _Paddress = TextEditingController();

       Profile(String rollno, password) async {
    try {
      Response response = await post(Uri.parse('https://studentportal.uoh.edu.pk/api_login'),
          body: {'rollno': rollno, 'password': password});
      if (response.statusCode == 200)
       {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print("data is uploaded sucessfully");
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Profile_page(
                                                  name: _name.text,
                                                  Fathername: _Fathername.text,
                                                  CNIC: _CNIC.text,
                                                  Cellno: _Cellno.text,
                                                  Email: _Email.text,
                                                  Whatsapp: _Whatsapp.text,
                                                  Domicile: _Domicile.text,
                                                  Paddress: _Paddress.text,
                                                )));
      }  {
        print('failed');
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid credentials.")));
      print(e.toString());
    }
  }

      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              child: SizedBox(
                height: 900,
                width: 800,
                child: Scaffold(
                  appBar: AppBar(
                      automaticallyImplyLeading:
                          false, //for removing back button on appbar.
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
                      title: Text(
                        'Profile Information',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      actions: [
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                CupertinoIcons.clear,
                                size: 19,
                              )),
                        ),
                      ]),
                  body: SingleChildScrollView(
                    child: Column(children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 210, bottom: 5),
                        child: Text(
                          "Name:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 30,
                        child: TextFormField(
                          controller: _name,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: Color.fromARGB(255, 67, 2, 78),
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 163, bottom: 5),
                        child: Text(
                          "Father Name:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 30,
                        child: TextFormField(
                          controller: _Fathername,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: Color.fromARGB(255, 67, 2, 78),
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 210, bottom: 5),
                        child: Text(
                          "CNIC:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 30,
                        child: TextFormField(
                          controller: _CNIC,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: Color.fromARGB(255, 67, 2, 78),
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 195, bottom: 5),
                        child: Text(
                          "Cell No:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 30,
                        child: TextFormField(
                          controller: _Cellno,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: Color.fromARGB(255, 67, 2, 78),
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 205, bottom: 5),
                        child: Text(
                          "Email:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 30,
                        child: TextFormField(
                          controller: _Email,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: Color.fromARGB(255, 67, 2, 78),
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 185, bottom: 5),
                        child: Text(
                          "Whatsapp:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 30,
                        child: TextFormField(
                          controller: _Whatsapp,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: Color.fromARGB(255, 67, 2, 78),
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 200, bottom: 5),
                        child: Text(
                          "Gender:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Padding(
                          padding: EdgeInsets.only(),
                          child: Row(children: [
                            Radio(
                              activeColor: Color.fromARGB(255, 80, 3, 66),
                              value: 1,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              },
                            ),
                            Text("Male"),
                            Radio(
                              activeColor: Color.fromARGB(255, 80, 3, 66),
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              },
                            ),
                            Text("Female")
                          ])),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 200, bottom: 5),
                        child: Text(
                          "Religion:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(),
                          child: Row(children: [
                            Radio(
                              activeColor: Color.fromARGB(255, 80, 3, 66),
                              value: 1,
                              groupValue: _Value,
                              onChanged: (value) {
                                setState(() {
                                  _Value = value!;
                                });
                              },
                            ),
                            Text("Muslim"),
                            Radio(
                              activeColor: Color.fromARGB(255, 80, 3, 66),
                              value: 2,
                              groupValue: _Value,
                              onChanged: (value) {
                                setState(() {
                                  _Value = value!;
                                });
                              },
                            ),
                            Text("Non-Muslim")
                          ])),

                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 160, bottom: 5),
                        child: Text(
                          "Marital Status:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 30,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: Color.fromARGB(255, 67, 2, 78),
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 190, bottom: 5),
                        child: Text(
                          "Domicile:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 30,
                        child: TextFormField(
                          controller: _Domicile,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: Color.fromARGB(255, 67, 2, 78),
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 190, bottom: 5),
                        child: Text(
                          "Disability:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 30,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: Color.fromARGB(255, 67, 2, 78),
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 115, bottom: 5),
                        child: Text(
                          "Scholarship Availing:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 30,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: Color.fromARGB(255, 67, 2, 78),
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10, right: 115, bottom: 5),
                        child: Text(
                          "Permanent Address:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 30,
                        child: TextFormField(
                          controller: _Paddress,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: Color.fromARGB(255, 67, 2, 78),
                                  width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
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
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 40,
                            bottom: 10,
                          ),
                          child: Row(children: [
                            SizedBox(
                              child: ElevatedButton(
                                  child: SizedBox(
                                      height: 30,
                                      width: 50,
                                      child: Center(
                                          child: Text(
                                        "Close",
                                        style: TextStyle(fontSize: 14),
                                      ))),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 119, 115, 119),
                                    // side: BorderSide(color: Colors.yellow, width: 5),
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: ElevatedButton(
                                  child: SizedBox(
                                      height: 30,
                                      width: 90,
                                      child: Center(
                                          child: Text(
                                        "Save Changes",
                                        style: TextStyle(fontSize: 14),
                                      ))),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 124, 5, 71),
                                    // side: BorderSide(color: Colors.yellow, width: 5),
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  onPressed: () {
                                    
                                    //  Profile(   name: _name.text,
                                    //               Fathername: _Fathername.text,
                                    //               CNIC: _CNIC.text,
                                    //               Cellno: _Cellno.text,
                                    //               Email: _Email.text,
                                    //               Whatsapp: _Whatsapp.text,
                                    //               Domicile: _Domicile.text,
                                    //               Paddress: _Paddress.text,
                                    //  )
                                  }
                                  // validate,
                                  ),
                            ),
                          ]),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: Mydrawer(),
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
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.zoom_out_map_outlined)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10, right: 20),
              child: Text(
                "Logout",
              ),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    right: 130,
                  ),
                  child: Text(
                    "Student Profile",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
                  )),
              Padding(
                padding: EdgeInsets.only(
                  // top: MediaQuery.of(context).size.height * 0.1,
                  right: 20,
                  left: 20,
                ),
                child: Container(
                  width: 320,
                  height: 310,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(2),
                      border: const Border(
                        top: BorderSide(
                            color: Color.fromARGB(255, 67, 2, 78), width: 3.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 3,
                            color: Color.fromARGB(255, 235, 232, 234))
                      ]),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        // top: MediaQuery.of(context).size.height * 0.1,
                        right: 20,
                        left: 20,
                      ),
                      child: Column(

                          //  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                "assets/images/pic.webp",
                                width: 90,
                                height: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // SizedBox(
                            //   height: 10.0,
                            // ),
                            Text(
                              "${widget.name}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Information Technology",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                            Divider(),
                            Text(
                              "${widget.Fathername} ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            Divider(),
                            Text(
                              "Student ID ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            Divider(),
                            Text(
                              "Registration No ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            Divider(),
                          ]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                height: 50,
                width: 320,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 20,
                  ),
                  child: Text(
                    "Information",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 67, 2, 78),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 3,
                          color: Color.fromARGB(255, 235, 232, 234))
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(
                  // top: MediaQuery.of(context).size.height * 0.1,
                  right: 20,
                  left: 20,
                ),
                child: Container(
                  width: 320,
                  height: 635,
                  decoration: BoxDecoration(
                      color: Colors.white,

                      // borderRadius: BorderRadius.circular(2),
                      // border: Border(
                      //   top: BorderSide(
                      //       color: Color.fromARGB(233, 110, 21, 71),
                      //       width: 60.0),
                      // ),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 3,
                            color: Color.fromARGB(255, 235, 232, 234))
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(
                      // top: MediaQuery.of(context).size.height * 0.1,
                      right: 20,
                      left: 20,
                    ),
                    child: Column(

                        //  mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, right: 235, bottom: 10),
                            child: Text(
                              "Name",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            child: Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                ),
                                child: Text(
                                  '${widget.name}',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                  color: Color.fromARGB(255, 192, 186, 186),
                                  width: 0.9),
                              color: Color.fromARGB(255, 219, 214, 214),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, right: 190, bottom: 10),
                            child: Text(
                              "Father Name",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            child: Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                ),
                                child: Text(
                                  '${widget.Fathername}',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                  color: Color.fromARGB(255, 192, 186, 186),
                                  width: 0.9),
                              color: Color.fromARGB(255, 231, 229, 229),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, right: 235, bottom: 10),
                            child: Text(
                              "CNIC",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            child: Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                ),
                                child: Text(
                                  '${widget.CNIC}',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                  color: Color.fromARGB(255, 192, 186, 186),
                                  width: 0.9),
                              color: Color.fromARGB(255, 231, 229, 229),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, right: 220, bottom: 10),
                            child: Text(
                              "Cell No",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            child: Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                ),
                                child: Text(
                                  '${widget.Cellno}',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                  color: Color.fromARGB(255, 192, 186, 186),
                                  width: 0.9),
                              color: Color.fromARGB(255, 231, 229, 229),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, right: 235, bottom: 10),
                            child: Text(
                              "Email",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            child: Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                ),
                                child: Text(
                                  '${widget.Email}',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                  color: Color.fromARGB(255, 192, 186, 186),
                                  width: 0.9),
                              color: Color.fromARGB(255, 231, 229, 229),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, right: 208, bottom: 10),
                            child: Text(
                              "Whatsapp",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            child: Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                ),
                                child: Text(
                                  '${widget.Whatsapp}',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                  color: Color.fromARGB(255, 192, 186, 186),
                                  width: 0.9),
                              color: Color.fromARGB(255, 231, 229, 229),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, right: 215, bottom: 10),
                            child: Text(
                              "Domicile",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            child: Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                ),
                                child: Text(
                                  '${widget.Domicile}',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                  color: Color.fromARGB(255, 192, 186, 186),
                                  width: 0.9),
                              color: Color.fromARGB(255, 231, 229, 229),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, right: 210, bottom: 10),
                            child: Text(
                              "Paddress",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            child: Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                ),
                                child: Text(
                                  '${widget.Paddress}',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                  color: Color.fromARGB(255, 192, 186, 186),
                                  width: 0.9),
                              color: Color.fromARGB(255, 231, 229, 229),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
