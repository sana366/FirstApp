import 'package:flutter/material.dart';
import 'package:flutter_application_myapp/pages/home_page.dart';
import 'package:flutter_application_myapp/pages/login.dart';
import 'package:flutter_application_myapp/utils/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // dynamic token = FlutterSession().get('token');

  // runApp(MaterialApp(home: token != '' ? homepage(): Login_page()));
  runApp(MyApp());
}

// token != '' ? homepage():
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // final ThemeChanger = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      //  child: Builder (builder: (Build(context) {
      // final ThemeChanger = Provider.of<ThemeChanger>(context);
      title: "Student Portal",
      // themeMode: Provider.of<ThemeChanger>(context).themeMode,
      theme: ThemeData(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Color.fromARGB(255, 67, 2, 78),
                secondary: Colors.grey,
              )),
      // themeMode: ThemeMode.light,
      // theme: MyTheme.lighttheme,
       // darkTheme: ThemeData(brightness: Brightness.dark),

      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Login_page(),
        //      '/home': (context) => Login_page (),
        // '/login': (context) => homepage (),
        // MyRoutes.LoginRoute: (context) => LoginPage(),
        // MyRoutes.HomeRoute: (context) => Login_page(),
        // MyRoutes.CreateAccountRoute: (context) => CreateAccount(),
      },
      // home: homepage(),
    );
  }
}
