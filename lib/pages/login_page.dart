import 'package:flutter/material.dart';
import 'package:flutter_application_myapp/pages/create_account.dart';
import 'package:flutter_application_myapp/pages/home_page.dart';
import 'package:flutter_application_myapp/utils/routes.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    setState(() {});
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.HomeRoute);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 28.0,
          ),
          Text(
            "APPLICATION LOGIN FORM",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text("Dont have an account yet? Click on Create Account"),
          SizedBox(
            height: 28.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username can't be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        return "password can't be empty";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 28.0,
                  ),
                  ElevatedButton(
                    child: Text("Login"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (cpntext) => homepage()));
                    },
                  ),

//
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    child: Text("Create Account"),
                    onPressed: () {
                      Icon(Icons.arrow_back);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (cpntext) => CreateAccount()));
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  

                  // Material(
                  //   color: Colors.cyan,
                  //   borderRadius: BorderRadius.circular(50),
                  //   child: InkWell(
                  //     onTap: () => moveToHome(context),
                  //     enableFeedback: _formKey.currentState?.validate(),
                  //     child: AnimatedContainer(
                  //       duration: Duration(seconds: 1),
                  //       width: 70,
                  //       height: 50,
                  //       alignment: Alignment.center,
                  //       child: Text(
                  //         "",
                  //         style: TextStyle(
                  //             color: Colors.black,
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 20),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
