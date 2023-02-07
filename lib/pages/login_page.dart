import 'package:flutter/material.dart';
import 'package:flutter_application_myapp/pages/create_account.dart';
import 'package:flutter_application_myapp/pages/home_page.dart';
import 'package:flutter_application_myapp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Form(
          key: _formKey,
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
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
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
                        if (value!.isEmpty ||
                            RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (cpntext) => homepage()));
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      child: Text("Create Account"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (cpntext) => CreateAccount()));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
