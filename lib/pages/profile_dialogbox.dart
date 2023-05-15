import 'package:flutter/material.dart';

class Dialog extends StatefulWidget {
  const Dialog({key});

  @override
  State<Dialog> createState() => _DialogState();
}

class _DialogState extends State<Dialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /////  Example code
        // String rollno = '';
        // String password = '';
        // String _errorMessage = '';

        // Future<dynamic> _submit(String rollno, String password) async {
        //   setState(() {
        //     _errorMessage = '';
        //   });
        //   if (formKey.currentState?.validate() ??
        //       false) //error with null check operator
        //   // if (_formKey.currentState == null)
        //   {
        //     // _formKey.currentState!.save();
        //     try {
        //       var headers = {
        //         'Cookie':
        //             'Cookie_1=value; ci_session=b35q32c7fmlfpcctg5s5dacd56maomqv'
        //       };
        //       var request = https.MultipartRequest(
        //           'POST', Uri.parse('https://studentportal.uoh.edu.pk/api_login'));
        //       request.fields.addAll({
        //         'device': 'android',
        //         'token': 'asdf@123',
        //         'rollno': 'F22-2014',
        //         'password': '37232',
        //       });

        //       request.headers.addAll(headers);

        //       https.StreamedResponse response = await request.send();
        //       if (response.statusCode == 200) {
        //         print(response.statusCode);
        //         Navigator.push(
        //             context, MaterialPageRoute(builder: (context) => homepage()));
        //         // handle success response
        //       } else {
        //         if (response.statusCode == 404) {
        //            ScaffoldMessenger.of(context)
        //         .showSnackBar(SnackBar(content: Text("Invalid credentials.")));
        //         }
        //       }
        //     }

        //     // setState(() {
        //     //   _errorMessage = 'Invalid credentials';
        //     //   print("error");
        //     // });
        //     catch (error) {
        //       setState(() {
        //         _errorMessage = 'An error occurred, please try again';
        //         print('error occuring');
        //       });
        //     }
        //   }
        // }
//////////////another example////////////////////////////////////////
        ///
        /// // Future<Map<String, dynamic>> _submit(String rollno, String password) async {
        //   final response = await https
        //       .post(Uri.parse('https://studentportal.uoh.edu.pk/api_login'), body: {
        //     'rollno': rollno,
        //     'password': password,
        //   });

        //   if (response.statusCode == 200) {
        //     final body = json.decode(response.body);
        //     final token = body['token'];
        //     final user = body['device'];

        //     // Store the user's credentials securely
        //     final storage = FlutterSecureStorage();
        //     await storage.write(
        //         key: STORAGE_KEY,
        //         value: json.encode({'token': token, 'device': user}));

        //     return {'success': true, 'message': 'Login successful'};
        //   } else {
        //     final body = json.decode(response.body);

        //     final message = body['message'];

        //     return {'success': false, 'message': message};
        //   }
        // }
///////////////////one more//////////////////////////////////////////

        // Future<dynamic> _submit(String rollno, String password) async {
        //   setState(() {
        //     _errorMessage = '';
        //   });
        //   if (formKey.currentState?.validate() ?? false) {
        //     try {
        //       var headers = {
        //         'Cookie':
        //             'Cookie_1=value; ci_session=b35q32c7fmlfpcctg5s5dacd56maomqv'
        //       };
        //       var request = http.MultipartRequest(
        //           'POST', Uri.parse('https://studentportal.uoh.edu.pk/api_login'));
        //       request.fields.addAll({
        //         'device': 'android',
        //         'token': 'asdf@123',
        //         'rollno': rollno,
        //         'password': password,
        //       });

        //       request.headers.addAll(headers);

        //       http.StreamedResponse response = await request.send();
        //       print('API response status code: ${response.statusCode}');
        //       print('API response body: ${await response.stream.bytesToString()}');
        //       if (response.statusCode == 200) {

        //         print('Login successful');
        //         Navigator.push(
        //             context, MaterialPageRoute(builder: (context) => homepage()));
        //       } else {
        //         setState(() {
        //           _errorMessage = 'Invalid credentials';
        //         });
        //         print('Login failed');
        //       }
        //     } catch (error) {
        //       setState(() {
        //         _errorMessage = 'An error occurred, please try again';
        //       });
        //       print('API error: $error');
        //     }
        //   }
        // }
        );
 /////////////////////one further example/////////////////////////////
 /// //  login(String rollno, String password) async {
//     Map<String, dynamic> body = {
//       "device": 'android',
//       "password": '37232',
//       "token": 'asdf@123',
//       "rollno": 'F22-2014'
//     };
//     final response = await http.post(
//  var url= Uri.parse("https://studentportal.uoh.edu.pk/api_login"),
//   body: jsonEncode(body),
//   headers: {'Content-Type': 'application/json'},

// );

  // login(String rollno, String password) async {
  //   Map<String, String> body = {
  //     "device": 'android',
  //     "password": '37232',
  //     "token": 'asdf@123',
  //     "rollno": 'F22-2014'
  //   };
  //   print("Inside Funcation");

  //   try {
  //     final url = Uri.parse('https://studentportal.uoh.edu.pk/api_login');

  //     var request = http.MultipartRequest('POST', url)..fields.addAll(body);

  //     var response = await request.send();
  //     final respStr = await response.stream.bytesToString();

  //       print(jsonDecode(respStr));
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => homepage()));

  //       print("This is the Status Code$respStr");
  //       var encoded = json.decode(respStr);

  //       print(encoded['status']);

  //      {
  //       print('failed');
  //     }
  //   } catch (e) {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text("Invalid credentials.")));
  //     print(e.toString());
  //   }
  // }

  // print("Inside Funcation");

  // try {
  //   final url = Uri.parse('https://studentportal.uoh.edu.pk/api_login');

  //   var request = http.MultipartRequest('POST', url)..fields.addAll(body);

  //   var response = await request.send();
  //   final respStr = await response.stream.bytesToString();
  //   if (response.statusCode == 200) {
  //     print(jsonDecode(respStr));
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => homepage()));

  //     print("This is the Status Code$respStr");
  //     var encoded = json.decode(respStr);

  //     print(encoded['status']);
  //     http.Response response = await http.post(
  //         Uri.parse("https://studentportal.uoh.edu.pk/api_login"),
  //         body: json.encode(body));
  //     print(response.statusCode);
  //     if (response.statusCode == 200) {
  //       var data = jsonDecode(response.body.toString());
  //       print(data['token']);
  //       print("data is uploaded sucessfully");
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => homepage()));
  //     } else {
  //       print('failed');
  //     }
  //   } else {
  //     print('failed');
  //   }
  // } catch (e) {
  //   ScaffoldMessenger.of(context)
  //       .showSnackBar(SnackBar(content: Text("Invalid credentials.")));
  //   print(e.toString());
  // }
////////////////hope last one//////////////////////////
///
///// Future<void> login(String rollno, String password) async {
//   final url = Uri.parse('https://studentportal.uoh.edu.pk/api_login');
//   final headers = {'Content-Type': 'application/json'};
//   final body = jsonEncode({'rollno': 'F22-2014', 'password': '37232'});

//   final response = await http.post(url, headers: headers, body: body);

//   if (response.statusCode == 200)
//    {
//     print('Success! Response body: ${response.body}');
//   }
//    else
//    {
//     print('Request failed with status: ${response.statusCode}.');
//   }
// }

// Future<void> login(String rollno, String password) async {
//   final url = Uri.parse('https://studentportal.uoh.edu.pk/api_login');
//   final headers = {'Content-Type': 'application/json'};
//   final body = jsonEncode({'rollno': 'F22-2014', 'password': '37232'});

//   final response = await http.post(url, headers: headers, body: body);

//  print("API response is = ${response.body}");
// }
  }
}
