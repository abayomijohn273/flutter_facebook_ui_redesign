import 'package:facebook_ui/pages/HomeScreen.dart';
import 'package:facebook_ui/pages/Welcome.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => WelcomeScreen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
