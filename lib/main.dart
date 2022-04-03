import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/home_page.dart';
import 'package:flutter_application_3/pages/login_page.dart';
import 'package:flutter_application_3/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        // ignore: prefer_const_constructors
        "/": (context) => LoginPage(),
        // ignore: prefer_const_constructors
        MyRoutes.homeRoute: (context) => HomePage(),
        // ignore: prefer_const_constructors
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
