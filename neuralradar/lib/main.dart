import 'dart:js';

import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
// import 'package:tflite_flutter/tflite_flutter.dart';

String my_main_str = "hello";
var encoder;
var decoder;

Future<void> load_tflite() async {
  // encoder = await Interpreter.fromAsset('assets/encoder.tflite');
  // decoder = await Interpreter.fromAsset('assets/decoder.tflite');
  encoder = await Tflite.loadModel(
    model: "assets/encoder.tflite",
  );
  decoder = await Tflite.loadModel(
    model: "assets/decoder.tflite",
  );
}

void main() {
  runApp(MyApp());
  load_tflite();

  var a = [0.0, 1.0, 2.0, 3.0, 4.0, 5.0];
  var b = [0.0, 1.0, 2.0, 3.0, 4.0, 5.0];
  var c = [0.0, 1.0, 2.0, 3.0, 4.0, 5.0];
  var input = [a, b, c];

  // var output = List(3 * 6).reshape([3, 6]);

  // encoder.run(input, output);

  // print(output);
  // my_main_str = output.toString();
  // my_main_str="yes";
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
          children: [
            Image.asset(
              'assets/logo.png',
            ),
            Text(''),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text(my_main_str),
                // child: Text('Begin Session'),
                onPressed: () {
                  Navigator.of(context).push(_createRoute(0));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('Settings'),
                onPressed: () {
                  Navigator.of(context).push(_createRoute(1));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('Help'),
                onPressed: () {
                  Navigator.of(context).push(_createRoute(2));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute(var int) {
  if (int == 0) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SessionPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1);
        var end = Offset.zero;
        var curve = Curves.easeInOutQuart;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  if (int == 1) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SettingsPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1);
        var end = Offset.zero;
        var curve = Curves.easeInOutQuart;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  if (int == 2) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => HelpPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1);
        var end = Offset.zero;
        var curve = Curves.easeInOutQuart;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

class SessionPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Session'),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Settings'),
      ),
    );
  }
}

class HelpPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Help'),
      ),
    );
  }
}
