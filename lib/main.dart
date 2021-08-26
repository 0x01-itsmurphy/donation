// import 'package:donation/dashboard/dashboard.dart';
// import 'package:donation/dashboard/dashboardNew.dart';
// import 'package:donation/registration/signIn.dart';
// import 'package:donation/registration/welcomeBody.dart';
// import 'package:donation/registration/welcomeScreen.dart';
import 'package:donation/widgets/splashScreen.dart';
import 'package:flutter/material.dart';
// import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThingsToDonate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.deepOrangeAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      //home: WelcomeScreen(),
      //home: Dashboard(),
      //home: DashboardNew(),
    );
  }
}


