// import 'package:donation/registration/signIn.dart';
// import 'package:donation/registration/signUp.dart';
// import 'package:donation/widgets/mainBackground.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class WelcomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Background(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             'assets/splash/donate.png',
//             scale: 3,
//           ),
//           Text(
//             'Things To Donate',
//             style: TextStyle(
//                 fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2),
//           ),
//           Text(
//             'Anything Anywhere',
//             style: TextStyle(
//                 fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1),
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           // Container(
//           //   child: Column(
//           //     mainAxisAlignment: MainAxisAlignment.start,
//           //     children: [
//           //       Text(
//           //         'Choose from thousands of trusted donner',
//           //         style: TextStyle(
//           //           fontSize: 20,
//           //           fontWeight: FontWeight.bold,
//           //           fontFamily: 'Ubuntu'
//           //
//           //         ),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           SizedBox(height: 20,),
//           Container(
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(30),
//               child: TextButton(
//                   style: TextButton.styleFrom(
//                       backgroundColor: Colors.redAccent,
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
//                   onPressed: () {
//                     Navigator.of(context).pushReplacement(
//                         MaterialPageRoute(builder: (context) => SignIn()));
//                   },
//                   child: Text(
//                     'Get Started',
//                     style: TextStyle(color: Colors.white, fontSize: 22),
//                   )),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
