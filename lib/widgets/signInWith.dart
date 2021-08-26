import 'package:flutter/material.dart';


class SignInWith extends StatelessWidget {
  const SignInWith({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: TextButton(
              style: TextButton.styleFrom(
                //backgroundColor: Colors.lightBlue[200],
                padding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
              ),
              child: Image(
                height: 30,
                width: 30,
                image: AssetImage(
                  'assets/icons/facebook.png',
                ),
                color: Colors.lightBlue,
                // style: TextStyle(
                //     fontSize: 35,
                //   fontWeight: FontWeight.bold,
                //   fontFamily: 'Signika',
                //   color: Colors.lightBlue
                // ),
              ),
              onPressed: () {
                print('Facebook Button Pressed');
              },
            ),
          ),
        ),
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
              ),
              child: Image(
                height: 30,
                width: 30,
                image: AssetImage(
                  'assets/icons/google.png',
                ),
              ),
              onPressed: () {
                print('Google Button Pressed');
              },
            ),
          ),
        ),
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
              ),
              child: Image(
                height: 30,
                width: 30,
                image: AssetImage(
                  'assets/icons/twitter.png',
                ),
                color: Colors.lightBlue,
              ),
              onPressed: () {
                print('Twitter Button Pressed');
              },
            ),
          ),
        ),
      ],
    );
  }
}