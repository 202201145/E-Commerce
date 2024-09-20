import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled3/home/homeSCREEN_shapes.dart';
import 'package:untitled3/home/register.dart';
import 'package:untitled3/homescreen.dart';
import 'LogIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Set the initial screen to SplashScreen
      routes: {
        LogIn.routeName: (context) => LogIn(),
        Register.routeName: (context) => Register(),
        homescren.RouteName: (context) => homescren(),
        shape.RouteName: (context) => shape(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start a timer and navigate to the login screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, LogIn.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/Splash Screen.png'
      ,height: double.infinity,width: double.infinity,),
    );
  }
}
