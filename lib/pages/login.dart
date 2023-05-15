import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

// import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import '../utils/api-response.dart';
import 'home_page.dart';

// late String finalEmail;

class Login_page extends StatefulWidget {
  const Login_page({
    key,
  });

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  void initState() {
    super.initState();
    _isObsecured = true;
    _checkIfLoggedIn();
  }

  void _checkIfLoggedIn() async {
    var token = await _getTokenFromStorage();
    // ignore: unnecessary_null_comparison
    if (token != null) {
      setState(() {
        isLoggedIn = true;
        token = rollnoController.text;
      });
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => homepage()));
    }
  }

  Future<String> _getTokenFromStorage() async {
    // TODO: Implement a secure way to store the token
    // For example, you can use Flutter Secure Storage package
    // Here we're just storing the token in memory for simplicity
    return rollnoController.text;
  }

  // Future getValidationData() async {
  //   final SharedPreferences sharedPreferences =
  //       await SharedPreferences.getInstance();
  //   var obtainedEmail = sharedPreferences.getString('rollno');
  //   setState(() {
  //     finalEmail = obtainedEmail;
  //   });
  //   print(finalEmail);
  // }

  // static const API_URL = 'https://studentportal.uoh.edu.pk/api_login';
  // static const STORAGE_KEY = 'user_credentials';
  final _formKey = GlobalKey<FormState>();
  void validate() {
    if (_formKey.currentState!.validate()) {
      print("Validated");
    } else {
      print("Not Validated");
    }
  }

  var rollnoController = TextEditingController();
  var passwordController = TextEditingController();
  var _isObsecured;
  bool isLoading = false;
  bool isLoggedIn = false;
  late String token;

  @override
  void dispose() {
    rollnoController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _storeToken(String rollno) async {
    //  Implement a secure way to store the token
    // For example, you can use Flutter Secure Storage package
    // Here we're just storing the token in memory for simplicity
    token = rollno;
  }

  Future<void> login(String rollno, String password) async {
    setState(() {
      isLoading = true;
    });
    try {
      // ignore: unused_local_variable
      final url = Uri.parse('https://studentportal.uoh.edu.pk/api_login');
      print("hello test here...!");
      // ignore: unused_local_variable
      final headers = {
        'content-Type': 'application/json',
        //  'Charset': 'utf-8'
      };
      if (passwordController.text.isNotEmpty &&
          rollnoController.text.isNotEmpty) {
        // Map<String, dynamic> body =
        //     ({'rollno': 'F22-2014', 'password': '37232'});
        print("hello test here...!");

        var response = await http.post(
            Uri.parse("https://studentportal.uoh.edu.pk/api_login"),
            body: ({
              "device": "andriod",
              "token": "asdf@123",
              "rollno": rollnoController.text,
              "password": passwordController.text,
            }));

        if (response.statusCode == 200) {
          final jsonResponse = json.decode(response.body);
          final apiResponse = ApiResponse.fromJson(jsonResponse);
          if (apiResponse.response == 'success') {
            print('Success! Response body: ${response.body}');
            await _storeToken(
              apiResponse.rollno,
            );
            setState(() {
              isLoggedIn = true;
              isLoading = false;
            });
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => homepage()));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Invalid Credentials.")));
            setState(() {
              isLoading = false;
            });
            print('Request failed with status: ${response.statusCode}.');
          }
        }
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Blankfield not allowed.")));
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      print(e.toString());
      setState(() {
        isLoading = false;
      });
    }
  }

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
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                } else if (RegExp(r'^\d{1,3}-\d{3}')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                rollnoController != value;
                              },
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

                              obscureText: _isObsecured,
                              // cursorColor: Color.fromARGB(255, 67, 2, 78),
                              decoration: InputDecoration(
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(left: 12),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isObsecured = !_isObsecured;
                                        });
                                      },
                                      icon: _isObsecured
                                          ? Icon(Icons.visibility)
                                          : Icon(Icons.visibility_off)),
                                ),
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
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                passwordController != value;
                              },
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
                              }),
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _logout() async {
    // clear authentication data from storage (e.g. token, username, password)
    // ...

    // set isLoggedIn to false
    setState(() {
      isLoggedIn = false;
    });
  }
}
