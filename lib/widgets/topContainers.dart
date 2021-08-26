import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 75),
        child: Column(
          children: [
            Image.asset(
              'assets/register.png',
              height: 200,
            ),
          ],
        ),
      ),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          // color: Colors.lightBlue[300],
          color: Color(0xFFf2bea1),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
    );
  }
}
