// // import 'dart:convert';
// // import 'package:get/get.dart';
// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';

// import '../Model/profile/dataModel.dart';
// // import 'package:flutter_application_myapp/Model/profile/dataModel.dart';

// final String baseUrl = 'https://studentportal.uoh.edu.pk/api_profile';

// class EditProfile extends StatefulWidget {
//   const EditProfile({key});

//   @override
//   State<EditProfile> createState() => _EditProfileState();
// }

// class _EditProfileState extends State<EditProfile> {
//   // List<ProfileApi> profileApi = [];
//    String stringResponse = '';
//   var device = TextEditingController();
//   var token = TextEditingController();
//   var rollno = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: getData(     device.toString(),
//     token.toString(),
//      rollno.toString(),),
//         builder: ((context, snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//                 // itemCount: profileApi.length,
//                 itemBuilder: (context, rollno) {
//               return Container(
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(31, 155, 25, 25),
//                 ),
//                 child: Column(
//                   children: [
//                     Text.rich(TextSpan(children: [
//                       TextSpan(
//                           text: 'Data', style: TextStyle(color: Colors.black)),
        
//                       TextSpan(text: 'data'),
//                     ]
                    
//                     )),
//         // Text(stringResponse.toString()), 
//                   ],
//                 ),
//               );
//             });
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         }));
//   }

//   // Future<List<ProfileApi>> getData(
//   //   String device,
//   //   String token,
//   //   String rollno,
//   // ) async {
//   //   final response = await http
//   //       .get(Uri.parse('https://studentportal.uoh.edu.pk/api_profile'));
//   //   var headers = {'Cookie': 'Cookie_1=value'};
//   //   var request = http.MultipartRequest(
//   //       'GET',
//   //       Uri.parse(
//   //           'baseUrl/data?device=android&token=asdf@123&rollno=F22-2014'));
//   //   request.fields.addAll(
//   //       {'device': 'android', 'token': 'asdf@123', 'rollno': 'F22-2014'});
//   //   // var data = jsonDecode(response.body.toString());

//   //   if (response.statusCode == 200) {
//   //      print(response.statusCode);
//   //     return profileApi;
//   //   } else {
//   //         print('Failed to fetch data');
//   //     return profileApi;
//   //   }
//   // }
//   Future<ProfileApi> getData(
//     String device,
//     String token,
//     String rollno,
//   ) async {
//     var url =
//         "$baseUrl?device=" + device + "&token=" + token + "&rollno=" + rollno;
//     final response = await http.get(Uri.parse(url));
//     // ignore: unused_local_variable
//     final headers = {
//       'content-Type': 'application/json',
//     };

//     // var res = ProfileApi.fromJson(json.decode(response.body));
//     // return res;

//     print('test baseUrl:${baseUrl}');

//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       final apiResponse = ProfileApi.fromJson(jsonResponse);
//       if (apiResponse.response == 'success') {
//         print('Success! Response body: ${response.body}');

//         // List<dynamic> responseData = json.decode(response.body);
//         // profileApi =
//         //     responseData.map((data) => ProfileApi.fromJson(data)).toList();
//         // return profileApi;
//       } else {
//         print('Failed to fetch data: ${response.statusCode}');
//       }
//     }
//     throw Exception('Failed to fetch data: ${response.statusCode}');
//   }

//   // Future getData() async {
//   //   http.Response response;
//   //   response = await http.get(Uri.parse(
//   //       'https://studentportal.uoh.edu.pk/api_profile?device=android&token=asdf@123&rollno=F22-2014'));
//   //   if (response.statusCode == 200) {
//   //     setState(() {
//   //       stringResponse = response.body;
//   //     });
//   //   }
//   // }

//   // @override
//   // void initState() {
//   //   getData();
//   //   super.initState();
//   // }
// }
