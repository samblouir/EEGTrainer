import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neural Radar',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Page1(),
      // home: MyHomePage(title: 'Neural Radar'),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//
//   final String title;
//
//   // @override
//   // _MyHomePageState createState() => _MyHomePageState();
// }

class Page1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Image.asset(
            'assets/logo.png',
          ),
            Text('Neural Radar'),
            Text(''),
            ElevatedButton(
              child: Text('Start my session'),
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
            ),
            ElevatedButton(
              child: Text('Settings'),
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
            ),
            ElevatedButton(
              child: Text('Help'),
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1);
      var end = Offset.zero;
      var curve = Curves.easeInOutQuart;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Page 2'),
      ),
    );
  }
}
