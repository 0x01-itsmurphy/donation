// import 'package:donation/registration/welcomeBody.dart';
import 'package:donation/registration/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      print('Splash Screen');
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => WelcomeScreen()
      ));
    } );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Container(
          //   decoration: BoxDecoration(color: Colors.lightBlue[50]),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // CircleAvatar(
                      //   backgroundImage: AssetImage('assets/splash/donate.png'),
                      //   radius: 100,
                      // ),
                      Image.asset(
                        'assets/splash/donate.png', scale: 3,
                      ),

                      // Text(
                      //   'Things To Donate',
                      //   style: TextStyle(
                      //     fontSize: 26,
                      //     letterSpacing: 1.5,
                      //     fontWeight: FontWeight.bold,
                      //     fontFamily: 'Akaya',
                      //   ),
                      // ),
                      // SizedBox(height: 30,),
                      // CircularProgressIndicator()

                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircularProgressIndicator(),

                    // Padding(padding: EdgeInsets.only(top: 20)),
                    // Text(
                    //   'Things To Donate',
                    //   style: TextStyle(
                    //     fontSize: 24,
                    //     letterSpacing: 1.5,
                    //     fontWeight: FontWeight.bold,
                    //     fontFamily: 'Akaya',
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}