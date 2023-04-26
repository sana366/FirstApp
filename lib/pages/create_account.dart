// import 'package:flutter/material.dart';
// import 'package:flutter_application_myapp/pages/login_page.dart';

// class CreateAccount extends StatelessWidget {
//   const CreateAccount({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//           colors: [Color(0xffab2bc1), Color(0x00b1e6fe)],
//           begin: Alignment.bottomLeft,
//           end: Alignment.topRight,
//         )),
//         // color: Color.fromARGB(255, 211, 35, 199),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding:
//                 const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
//             child: Column(children: [
//               SizedBox(
//                 height: 38.0,
//               ),
//               Text(
//                 "APPLICANT REGISTRATION FORM",
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
//               ),
//               SizedBox(
//                 height: 28.0,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   fillColor: Colors.blueGrey.shade50,
//                   filled: true,
//                   hintText: "Enter Country",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   labelText: "COUNTRY",
//                 ),
//               ),
//               SizedBox(
//                 height: 28.0,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   fillColor: Colors.blueGrey.shade50,
//                   filled: true,
//                   hintText: "Enter UserName(CNIC)",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   labelText: "UserName(CNIC)",
//                 ),
//               ),
//               SizedBox(
//                 height: 28.0,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   fillColor: Colors.blueGrey.shade50,
//                   filled: true,
//                   hintText: "Cell no with country code",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   labelText: "Cell No",
//                 ),
//               ),
//               SizedBox(
//                 height: 28.0,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   fillColor: Colors.blueGrey.shade50,
//                   filled: true,
//                   hintText: "Enter Email",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   labelText: "Email",
//                 ),
//               ),
//               SizedBox(
//                 height: 28.0,
//               ),
//               TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   fillColor: Colors.blueGrey.shade50,
//                   filled: true,
//                   hintText: "Enter Password",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   labelText: "Password",
//                 ),
//               ),
//               SizedBox(
//                 height: 28.0,
//               ),
//               TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   fillColor: Colors.blueGrey.shade50,
//                   filled: true,
//                   hintText: "Repeat Password",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   labelText: "Repeat Password",
//                 ),
//               ),
//               SizedBox(
//                 height: 28.0,
//               ),
//               ElevatedButton(
//                 child: Text("Sign Up"),
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (cpntext) => LoginPage()));
//                 },
//               )
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }
