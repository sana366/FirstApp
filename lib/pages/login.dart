import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  // GlobalKey<FormState> formkey = GlobalKey<FormState>();
  // void validate() {
  //   if (formkey.currentState!.validate()) {
  //     print("Validated");
  //   } else {
  //     print("Not Validated");
  //   }
  // }

  // bool isHiddenPassword = true;
  /// Please Run application And check
  TextEditingController rollnoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login(String rollno, String password) async {
    Map<String, String> body = {
      "device": 'android',
      "password": '37232',
      "token": 'asdf@123',
      "rollno": 'F22-2014'
    };
    // Is your Mobile Connected with internet?yes
    /// i understand what is the issue wait
    print("Inside Funcation");

    try {
      final url = Uri.parse('https://studentportal.uoh.edu.pk/api_login');

      var request = http.MultipartRequest('POST', url)..fields.addAll(body);

      var response = await request.send();
      final respStr = await response.stream.bytesToString();
      if (response.statusCode == 200) {
        print(jsonDecode(respStr));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => homepage()));

        print("This is the Status Code$respStr");
        var encoded = json.decode(respStr);

        ///Worked ////////
        ///
        ///Worked  fine , check response okay
        print(encoded['status']);
        // http.Response response = await http.post(
        //     Uri.parse("https://studentportal.uoh.edu.pk/api_login"),
        //     body: json.encode(body));
        // print(response.statusCode);
        // if (response.statusCode == 200) {
        //   var data = jsonDecode(response.body.toString());
        //   print(data['token']);
        //   print("data is uploaded sucessfully");
        //   Navigator.push(
        //       context, MaterialPageRoute(builder: (context) => homepage()));
        // } else {
        //   print('failed');
        // }
      } else {
        print('failed');
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid credentials.")));
      print(e.toString());
    }
  }

  // final storage = new FlutterSecureStorage();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 154, 2, 93),
          Color.fromARGB(233, 26, 31, 31),
        ],
        end: Alignment.bottomLeft,
        begin: Alignment.topRight,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Form(
            // key: formkey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'STUDENT',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 150,
                  height: 15,
                  child: Text(
                    'INFORMATION PORTAL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 67, 2, 78),
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Container(
                      width: 320,
                      height: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Colors.white,
                        // border: Border(
                        //   top: BorderSide(
                        //       color: Color.fromARGB(255, 67, 2, 78),
                        //       width: 3.0),
                        // ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(),
                        child: Column(children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          // Divider(),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 270,
                            height: 50,
                            child: TextFormField(
                              controller: rollnoController,

                              // cursorColor: Color.fromARGB(255, 67, 2, 78),
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      // color: Color.fromARGB(255, 67, 2, 78),
                                      width: 2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 2.0),
                                ),
                                hintText: "XXX-XXX",
                                prefixIcon: Icon(
                                  Icons.person,
                                  size: 30,
                                  // color: Colors.grey,
                                ),
                              ),
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return "ID can't be empty";
                              //   } else {
                              //     return null;
                              //   }
                              // },
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: 270,
                            height: 50,
                            child: TextFormField(
                              controller: passwordController,

                              obscureText: true,
                              // cursorColor: Color.fromARGB(255, 67, 2, 78),
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(

                                      // color: Color.fromARGB(255, 67, 2, 78),
                                      width: 2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  //  borderRadius: BorderRadius.all(3),
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 2.0),
                                ),
                                hintText: "Password",
                                // suffixIcon: InkWell(
                                //      onTap:  _togglePasswordView,
                                //     child: Icon(Icons.visibility)),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  size: 28,
                                  // color: Colors.grey,
                                ),
                              ),
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return "Password can't be empty";
                              //   } else {
                              //     return null;
                              //   }
                              // },
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                              child: SizedBox(
                                  height: 30,
                                  width: 240,
                                  child: Center(child: Text("Login"))),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 67, 2, 78),
                                // side: BorderSide(color: Colors.yellow, width: 5),
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal),
                              ),
                              onPressed:
                                  // validate,
                                  () async {
                                login(rollnoController.text.toString(),
                                    passwordController.text.toString());
                                // final SharedPreferences sharedPreferences =
                                //     await SharedPreferences.getInstance();
                                // sharedPreferences.setString(
                                //     'email', emailController.text);
                                // sharedPreferences.setString(
                                //     'token', 'asdf@123');
                                // Get.to(homepage());

                                //  FlutterSession().set('token', '');

                                // if (formkey.currentState!.validate()) {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (cpntext) => homepage()));
                              }
                              // }
                              ),
                        ]),
                      ),
                    ),
                  ),
                ),

                // Center(
                //   child: Container(
                //     width: 50,
                //     height: 50,
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void _togglePasswordView() {
  //   if (isHiddenPassword == true) {
  //     isHiddenPassword = false;
  //   } else {
  //     isHiddenPassword = true;
  //   }
  //   setState(() {});
  // }

  // Future<void> login() async {
  //   if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
  //     var response = await http.post(
  //         Uri.parse("https://studentportal.uoh.edu.pk/api_login"),
  //         body: ({
  //           'email': emailController.text,
  //           'password': passwordController.text,
  //         }));

  //     if (response.statusCode == 200 )
  //     {

  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => homepage()));
  //     }  {
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: Text("Invalid credentials.")));
  //     }
  //   } else {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text("Blank Field not allowed")));
  //   }
  // }
}
