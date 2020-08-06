import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/second_page.dart';
import 'pages/loading_screen.dart';
import 'package:custom_splash/custom_splash.dart';
import 'pages/API.dart';
import 'package:http/http.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:io';
import 'pages/SliverPage.dart';

void main() => runApp(MaterialApp(
      home: Stack(
        overflow: Overflow.clip,
        alignment: AlignmentDirectional.bottomCenter,
        fit: StackFit.expand,
        children: <Widget>[
          CustomSplash(
            imagePath: 'assets/ThisIsFine.png',
            backGroundColor: Colors.blue[600],
            animationEffect: 'fade-in',
            logoSize: 800,
            home: HomePage(),
            duration: 4000,
            type: CustomSplashType.StaticDuration,
          ),
          Positioned(
            bottom: 200,
            child: Column(
              children: [
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                  backgroundColor: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    'Doggo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20.0,
                      wordSpacing: 2.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      routes: {
        '/home': (context) => HomePage(),
        '/second_page': (context) => SecondPage(),
        '/loading': (context) => LoadingScreen(),
        '/api': (context) => APIPage(),
        '/sliver': (context) => SliverPage(),
      },
    ));

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'This Is Fine',
//           style: TextStyle(
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//             wordSpacing: 2.0,
//             fontFamily: 'Montserrat',
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.orange[500],
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           ThisIsFine(),
//           ThisIsFine(),
//           ThisIsFine(),
//         ],
//       ),
//     );
//   }
// }

// class ThisIsFine extends StatefulWidget {
//   @override
//   _ThisIsFineState createState() => _ThisIsFineState();
// }

// class _ThisIsFineState extends State<ThisIsFine> {

//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         RawMaterialButton(
//           onPressed: () {
//             setState(() {
//               counter -= 1;
//             });
//           },
//           fillColor: Colors.orange[600],
//           shape: CircleBorder(),
//           child: Icon(
//             Icons.exposure_neg_1,
//             size: 25,
//           ),
//         ),
//         Expanded(
//           flex: 2,
//                   child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
//             margin: EdgeInsets.all(10.0),
//             child: Image.asset('assets/ThisIsFine.png', scale: 1.5),
//           ),
//         ),
//         RawMaterialButton(
//           onPressed: () {
//             setState(() {
//               counter += 1;
//             });
//           },
//           fillColor: Colors.orange[600],
//           shape: CircleBorder(),
//           child: Icon(
//             Icons.exposure_plus_1,
//             size: 25,
//           ),
//         ),
//         Expanded(
//           flex: 1,
//                   child: Container(
//             padding: EdgeInsets.all(5.0),
//             margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
//             color: Colors.grey[400],
//             child: Text(
//               '$counter',
//               style: TextStyle(
//                 fontSize: 15.0,
//                 fontFamily: 'Montserrat',
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),

//           ),
//         ),
//       ],
//     );
//   }
// }
/*
Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      margin: EdgeInsets.all(10.0),
      color:Colors.grey[400],
      child: Image(
        image: AssetImage('assets/ThisIsFine.png'),
      ),
    ),



Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ThisIsFine(),
          ThisIsFine(),
        ],
      ),
*/
