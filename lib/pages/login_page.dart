// import 'package:flutter/material.dart';
// import 'package:flutter_application_myapp/pages/create_account.dart';
// import 'package:flutter_application_myapp/pages/home_page.dart';
// import 'package:flutter_application_myapp/utils/routes.dart';
// import 'package:form_field_validator/form_field_validator.dart';

// class LoginPage extends StatefulWidget {
//   // const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   GlobalKey<FormState> formkey = GlobalKey<FormState>();
//   void validate() {
//     if (formkey.currentState!.validate()) {
//       print("Validated");
//     } else {
//       print("Not Validated");
//     }
//   }

//   // final _formKey = GlobalKey<FormState>();
//   moveToHome(BuildContext context) async {
//     setState(() {});
//     await Future.delayed(Duration(seconds: 1));
//     await Navigator.pushNamed(context, MyRoutes.HomeRoute);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(children: [
//           Container(
            
//             decoration: BoxDecoration(
//                 gradient: RadialGradient(
//               colors: [Color(0xffe9bff1), Color(0xff551560)],
//               center: Alignment.center,
//               radius: 0.8,
//             )),
//             child: Container(
//               child: Material(
//                 // color: Color.fromARGB(255, 226, 224, 231),

//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.1,
//                     right: 10,
//                     left: 10,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset(
//                         "assets/images/logo.png",
//                         width: 150,
//                         height: 150,
//                         fit: BoxFit.cover,
//                       ),
//                       SizedBox(
//                         height: 28.0,
//                       ),
//                       Text(
//                         "UNIVERSITY OF HARIPUR",
//                         style: TextStyle(
//                           fontSize: 27,
//                           fontWeight: FontWeight.bold,
//                           color: Color.fromARGB(255, 24, 5, 133),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         "STUDENT LOGIN PORTAL",
//                         style: TextStyle(
//                             fontSize: 22, fontWeight: FontWeight.normal),
//                       ),
//                       SizedBox(
//                         height: 38.0,
//                       ),
//                       Text(
//                         "Sign in To UOH Student Portal ",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 0,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 20.0, horizontal: 40.0),
//                         child: Form(
//                           key: formkey,
//                           autovalidateMode: AutovalidateMode.onUserInteraction,
//                           child: Column(
//                             children: <Widget>[
//                               TextFormField(
//                                 decoration: InputDecoration(
//                                     hintText: "Enter CNIC",
//                                     labelText: "Username",
//                                     border: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10))),
//                                 validator: (value) {
//                                   if (value!.isEmpty) {
//                                     return "CNIC can't be empty";
//                                   } else {
//                                     return null;
//                                   }
//                                 },
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               TextFormField(
//                                 obscureText: true,
//                                 decoration: InputDecoration(
//                                     hintText: "Enter Password",
//                                     labelText: "Password",
//                                     border: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10))),
//                                 validator: (value) {
//                                   if (value == null ||
//                                       value.isEmpty ||
//                                       RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
//                                     return "password can't be empty";
//                                   } else {
//                                     return null;
//                                   }
//                                 },
//                               ),
//                               SizedBox(
//                                 height: 28.0,
//                               ),
//                               ElevatedButton(
//                                 child: Text("Login"),
//                                 onPressed:
//                                     // validate,
//                                     () {
//                                   if (formkey.currentState!.validate()) {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (cpntext) => homepage()));
//                                   }
//                                   //  else {
//                                   //   return null;
//                                   // }
//                                 },
//                               ),

//                               //
//                               SizedBox(
//                                 height: 10.0,
//                               ),
//                               // ElevatedButton(
//                               //   child: Text(""),
//                               //   onPressed: () {
//                               //     Icon(Icons.arrow_back);
//                               //     // Navigator.push(
//                               //     //     context,
//                               //     //     MaterialPageRoute(
//                               //     //         builder: (cpntext) => CreateAccount()));
//                               //   },
//                               // ),
//                               SizedBox(
//                                 height: 10.0,
//                               ),

//                               // Material(
//                               //   color: Colors.cyan,
//                               //   borderRadius: BorderRadius.circular(50),
//                               //   child: InkWell(
//                               //     onTap: () => moveToHome(context),
//                               //     enableFeedback: _formKey.currentState?.validate(),
//                               //     child: AnimatedContainer(
//                               //       duration: Duration(seconds: 1),
//                               //       width: 70,
//                               //       height: 50,
//                               //       alignment: Alignment.center,
//                               //       child: Text(
//                               //         "",
//                               //         style: TextStyle(
//                               //             color: Colors.black,
//                               //             fontWeight: FontWeight.bold,
//                               //             fontSize: 20),
//                               //       ),
//                               //     ),
//                               //   ),
//                               // ),
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }
