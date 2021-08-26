import 'package:donation/widgets/categoryCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class DashboardNew extends StatelessWidget {
  // card style
  var cardTextStyle = TextStyle(
    fontSize: 20,
    fontFamily: 'Signika',
    fontWeight: FontWeight.bold,
    color: Colors.grey[900],
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // drawer: Drawer(
      //   child: Icon(Icons.menu_open_outlined),
      // ),
      // appBar: AppBar(
      //   backgroundColor: Colors.deepOrange[100],
      //   elevation: 1,
      // ),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
                color: Colors.deepOrange[100],
                image: DecorationImage(
                  alignment: Alignment.topLeft,
                  image: AssetImage("assets/images/main_top.png"),
                  scale: 1.5,
                  //fit: BoxFit.cover
                )),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFf2bea1), shape: BoxShape.circle),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Choose Donation',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),



                  // Search Box
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    //padding: EdgeInsets.symmetric(vertical: 1),
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 15)),
                    ),
                  ),
                  


                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.80,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          title: 'Clothes',
                          image: 'assets/category_icons/clothes-donation.png',
                          cardTextStyle: cardTextStyle,
                          press: () {
                            print('Clothes');
                          },
                        ),
                        CategoryCard(
                          title: 'Foods',
                          image: 'assets/category_icons/groceries.png',
                          cardTextStyle: cardTextStyle,
                          press: () {
                            print('Foods');
                          },
                        ),
                        CategoryCard(
                          title: 'Blood',
                          image: 'assets/category_icons/blood-donation.png',
                          cardTextStyle: cardTextStyle,
                          press: () {
                            print('Blood');
                          },
                        ),
                        CategoryCard(
                          title: 'Books',
                          image: 'assets/category_icons/book1.png',
                          cardTextStyle: cardTextStyle,
                          press: () {
                            print('Books');
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
