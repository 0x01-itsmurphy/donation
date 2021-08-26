import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final Function press;

  const CategoryCard({
    Key key,
    @required
    this.cardTextStyle,
    this.title,
    this.image,
    this.press,
  }) : super(key: key);

  final TextStyle cardTextStyle;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 20,
              spreadRadius: -23,
              color: Color(0xFFf2bea1),
              // color: Color(0xFFEA6346), //#EA6346

            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          // color: Color(0xFFf2bea1),
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: EdgeInsets.all(35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image,
                    scale: 3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: cardTextStyle,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
