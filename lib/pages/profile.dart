// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_myapp/pages/view_profile.dart';

// class Profile extends StatefulWidget {
//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   TextEditingController _name = TextEditingController();
//   TextEditingController _Fathername = TextEditingController();
//   TextEditingController _CNIC = TextEditingController();
//   TextEditingController _Cellno = TextEditingController();
//   TextEditingController _Email = TextEditingController();
//   TextEditingController _Whatsapp = TextEditingController();
//   TextEditingController _Domicile = TextEditingController();
//   TextEditingController _Paddress = TextEditingController();
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//             flexibleSpace: Container(
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                 colors: [
//                   Color.fromARGB(255, 154, 2, 93),
//                   Color.fromARGB(233, 21, 24, 24)
//                 ],
//                 begin: Alignment.bottomLeft,
//                 end: Alignment.topRight,
//               )),
//             ),
//             title: Text(
//               'Profile Information',
//               style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//             actions: [
//               Padding(
//                 padding: EdgeInsets.only(right: 20),
//                 child: IconButton(
//                     onPressed: () {
//                       // Navigator.push(
//                       //     context,
//                       //     MaterialPageRoute(
//                       //         builder: (cpntext) => Profile_page())
//                       //         );
//                     },
//                     icon: Icon(
//                       CupertinoIcons.clear,
//                       size: 19,
//                     )),
//               ),
//             ]),
//         body: SingleChildScrollView(
//           child: Column(children: [
//             Padding(
//               padding: EdgeInsets.only(top: 10, right: 290, bottom: 10),
//               child: Text(
//                 "Name:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               width: 320,
//               height: 40,
//               child: TextFormField(
//                 controller: _name,
//                 decoration: const InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 67, 2, 78),
//                         width: 1.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 10, right: 248, bottom: 10),
//               child: Text(
//                 "Father Name:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               width: 320,
//               height: 40,
//               child: TextFormField(
//                 controller: _Fathername,
//                 decoration: const InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 67, 2, 78),
//                         width: 1.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 10, right: 292, bottom: 10),
//               child: Text(
//                 "CNIC:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               width: 320,
//               height: 40,
//               child: TextFormField(
//                 controller: _CNIC,
//                 decoration: const InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 67, 2, 78),
//                         width: 1.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 10, right: 280, bottom: 10),
//               child: Text(
//                 "Cell No:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               width: 320,
//               height: 40,
//               child: TextFormField(
//                 controller: _Cellno,
//                 decoration: const InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 67, 2, 78),
//                         width: 1.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 10, right: 294, bottom: 10),
//               child: Text(
//                 "Email:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               width: 320,
//               height: 40,
//               child: TextFormField(
//                 controller: _Email,
//                 decoration: const InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 67, 2, 78),
//                         width: 1.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 10, right: 270, bottom: 10),
//               child: Text(
//                 "Whatsapp:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               width: 320,
//               height: 40,
//               child: TextFormField(
//                 controller: _Whatsapp,
//                 decoration: const InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 67, 2, 78),
//                         width: 1.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 10, right: 245, bottom: 10),
//               child: Text(
//                 "Marital Status:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               width: 320,
//               height: 40,
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 67, 2, 78),
//                         width: 1.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 10, right: 270, bottom: 10),
//               child: Text(
//                 "Domicile:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               width: 320,
//               height: 40,
//               child: TextFormField(
//                 controller: _Domicile,
//                 decoration: const InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 67, 2, 78),
//                         width: 1.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 10, right: 270, bottom: 10),
//               child: Text(
//                 "Disability:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               width: 320,
//               height: 40,
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 67, 2, 78),
//                         width: 1.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 10, right: 197, bottom: 10),
//               child: Text(
//                 "Scholarship Availing:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               width: 320,
//               height: 40,
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 67, 2, 78),
//                         width: 1.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 10, right: 200, bottom: 10),
//               child: Text(
//                 "Permanent Address:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               width: 320,
//               height: 40,
//               child: TextFormField(
//                 controller: _Paddress,
//                 decoration: const InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 67, 2, 78),
//                         width: 1.0),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                 colors: [
//                   Color.fromARGB(255, 154, 2, 93),
//                   Color.fromARGB(233, 21, 24, 24)
//                 ],
//                 begin: Alignment.bottomLeft,
//                 end: Alignment.topRight,
//               )),
//               child: Padding(
//                 padding: EdgeInsets.only(
//                   top: 10,
//                   left: 100,
//                   bottom: 10,
//                 ),
//                 child: Row(children: [
//                   SizedBox(
//                     child: ElevatedButton(
//                         child: SizedBox(
//                             height: 30,
//                             width: 50,
//                             child: Center(
//                                 child: Text(
//                               "Close",
//                               style: TextStyle(fontSize: 14),
//                             ))),
//                         style: ElevatedButton.styleFrom(
//                           primary: Color.fromARGB(255, 119, 115, 119),
//                           // side: BorderSide(color: Colors.yellow, width: 5),
//                           textStyle: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontStyle: FontStyle.normal),
//                         ),
//                         onPressed:
//                             // validate,
//                             () {
//                           // if (formkey.currentState!.validate()) {
//                           // Navigator.push(
//                           //     context,
//                           //     MaterialPageRoute(
//                           //         builder: (cpntext) => Profile_page()));
//                           // }
//                         }),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 20),
//                     child: ElevatedButton(
//                         child: SizedBox(
//                             height: 30,
//                             width: 90,
//                             child: Center(
//                                 child: Text(
//                               "Save Changes",
//                               style: TextStyle(fontSize: 14),
//                             ))),
//                         style: ElevatedButton.styleFrom(
//                           primary: Color.fromARGB(255, 124, 5, 71),
//                           // side: BorderSide(color: Colors.yellow, width: 5),
//                           textStyle: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontStyle: FontStyle.normal),
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (cpntext) => Profile_page(
//                                         name: _name.text,
//                                         Fathername: _Fathername.text,
//                                         CNIC: _CNIC.text,
//                                         Cellno: _Cellno.text,
//                                         Email: _Email.text,
//                                         Whatsapp: _Whatsapp.text,
//                                         Domicile: _Domicile.text,
//                                         Paddress: _Paddress.text,
//                                       )));
//                         }
//                         // validate,
//                         ),
//                   ),
//                 ]),
//               ),
//             ),
//           ]),
//         ),
//       );
      
// }
