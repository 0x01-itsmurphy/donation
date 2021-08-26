import 'package:donation/drawer/side_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // card style
  var cardTextStyle = TextStyle(
    fontSize: 20,
    fontFamily: 'Signika',
    fontWeight: FontWeight.bold,
    color: Colors.grey[900],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      // Drawer(
      //   elevation: 20,
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       DrawerHeader(
      //         child: Text("Header"),
      //       ),
      //       ListTile(
      //         title: Text("Home"),
      //       )
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(fontFamily: 'Signika', fontSize: 22),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 15.0),
              child:
              IconButton(
                icon: Icon(Icons.notification_important_outlined),
                onPressed: () {  },


              )
              // GestureDetector(
              //   onTap: () {},
              //   child: Icon(
              //     Icons.notification_important_outlined,
              //     size: 28.0,
              //   ),
              // )
          ),
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.lightBlue[400],
        // leading: GestureDetector(
        //   onTap: () {
        //     Drawer();
        //   },
        //   child: Icon(
        //     Icons.menu, // add custom icons also
        //   ),
        // ),
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.lightBlue[300], Colors.amber[200]]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 60,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select Category',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                              fontFamily: 'Signika',
                              letterSpacing: 0.5,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  // child: GridView.count(
                  //   crossAxisCount: 2,
                  //   mainAxisSpacing: 20,
                  //   crossAxisSpacing: 20,
                  //   primary: false,
                  //   children: [
                  //     Card(
                  //       elevation: 4,
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(8)
                  //       ),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           //Image.network('https://www.transparentpng.com/thumb/food/n0nASj-food-plate-cut-out.png', scale: 3,)
                  //           Image.asset(
                  //             'assets/category_icons/books.png',
                  //             scale: 4,
                  //           ),
                  //           Text(
                  //               'Books',
                  //               style: cardTextStyle
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  child: GridView.count(
                    primary: false,
                    padding: EdgeInsets.all(15),
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          print('Clothes Button Pressed');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightBlue[100],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/category_icons/clothes-donation.png',
                                scale: 3,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Clothes',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                          //
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Food Button Pressed');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightBlue[100],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/category_icons/groceries.png',
                                scale: 3,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Foods',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                          //
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Blood Button Pressed');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightBlue[100],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/category_icons/blood-donation.png',
                                scale: 3,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Blood',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                          //
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Books Button Pressed');
                        },
                        child: Container(
                          height: 81,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightBlue[100],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/category_icons/book1.png',
                                scale: 3,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Books',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                          //
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Donate Button Pressed');
                    },
                    child: Text(
                      'Donate',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue[500]),
                  ),
                ),
                SizedBox(height: 35,)
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
