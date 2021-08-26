// import 'package:donation/dashboard/dashboard.dart';
import 'package:donation/dashboard/dashboardNew.dart';
import 'package:donation/registration/signUp.dart';
import 'package:donation/widgets/signInWith.dart';
import 'package:donation/widgets/topContainers.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;

  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              //padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TopContainer(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.indigo[600],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Signika',
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Text(
                          //   'Email',
                          //   style: TextStyle(
                          //     color: Colors.grey[700]
                          //   ),
                          // ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                // color: Colors.lightBlue[100],
                                color: Color(0xFFf2bea1),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                            child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 15),
                                  prefixIcon: Icon(
                                    Icons.alternate_email,
                                  ),
                                  hintText: 'Email ID',
                                  fillColor: Colors.white),
                            ),
                          ),

                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                // color: Colors.lightBlue[100],
                                color: Color(0xFFf2bea1),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 15),
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                  ),
                                  hintText: 'Password',
                                  fillColor: Colors.white),
                              obscureText: true,
                            ),
                          ),

                          Container(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              child: Text(
                                'Forgot Password?',
                              ),
                              onPressed: () {
                                print('Forgot Password Button Pressed');
                              },
                            ),
                          ),

                          Container(
                            //padding: EdgeInsets.all(10),
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {
                                print('Sign In Button Pressed');
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => DashboardNew()));
                              },
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.indigo[900]),
                              ),
                              style: ElevatedButton.styleFrom(
                                  // primary: Colors.lightBlue[400]),
                                  primary: Color(0xFFf2bea1)),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                '———— Or, Sign in with ————',
                                style: TextStyle(color: Colors.grey[800]),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          SignInWith(),

                          SizedBox(
                            height: 10,
                          ),

                          Center(
                            child: GestureDetector(
                              onTap: () {
                                print('Don\'t have an account button pressed');
                                //widget.toggleView();
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
                              },
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Don\'t have an account?',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Sign Up',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
