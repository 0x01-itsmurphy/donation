import 'package:donation/drawer/settings.dart';
import 'package:donation/drawer/support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.lightBlue),
            accountName: Text(
              'User Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('test@test.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 80,
              child: ClipOval(
                child: Image.asset(
                  'assets/profile.jpg',
                  //width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_box_outlined),
            title: Text(
              'About',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            //trailing: Icon(Icons.account_box_outlined),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => About(),
              ));
            },
          ),
          ListTile(
            title: Text(
              'Support',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.support),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Support(),
              ));
            },
          ),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Settings(),
              ));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Close',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
          Divider(),
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {},
            child: Text(
              'Sign Out',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

// class Drawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: <Widget>[
//           UserAccountsDrawerHeader(accountName: null, accountEmail: null),
//           ListTile(
//             title: Text('About'),
//             trailing: Icon(Icons.account_box_outlined),
//           ),
//           ListTile(
//             title: Text('Support'),
//             trailing: Icon(Icons.account_box_outlined),
//           ),
//           ListTile(
//             title: Text('Settings'),
//             trailing: Icon(Icons.account_box_outlined),
//           ),
//         ],
//       ),
//     );
//   }
// }
