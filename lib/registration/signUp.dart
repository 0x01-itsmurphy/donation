import 'package:donation/registration/signIn.dart';
import 'package:donation/widgets/signInWith.dart';
import 'package:donation/widgets/topContainers.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {

  final Function toggleView;

  SignUp({this.toggleView});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TopContainer(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sign Up',
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
                                    Icons.person_outline,
                                  ),
                                  hintText: 'Username',
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
                            ),
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
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            //padding: EdgeInsets.all(10),
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {
                                print('Sign Up Button Pressed');
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(fontSize: 20, color: Colors.indigo[900]),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFf2bea1),),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                '———— Or, Sign up with ————',
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
                                print('Already account button pressed');
                                //widget.toggleView();
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()));
                              },
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Already have an account?',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Sign In',
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
