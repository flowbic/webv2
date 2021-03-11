import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:webv2/MainView.dart';

void main() {
  print(window.physicalSize);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // SliverAppBar is declared in Scaffold.body, in slivers of a
  // CustomScrollView.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flowbic',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        backgroundColor: Colors.blueGrey[900],
        accentColor: Colors.deepPurple,
        accentColorBrightness: Brightness.dark,
        buttonTheme: ButtonTheme.of(context).copyWith(
            buttonColor: Colors.pink,
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainView(),
    );
  }
}

  //  theme: ThemeData(
  //       primarySwatch: Colors.pink,
  //       backgroundColor: Colors.pink[100],
  //       accentColor: Colors.deepPurple,
  //       accentColorBrightness: Brightness.dark,
  //       buttonTheme: ButtonTheme.of(context).copyWith(
  //           buttonColor: Colors.pink,
  //           textTheme: ButtonTextTheme.primary,
  //           shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(20))),
  //       visualDensity: VisualDensity.adaptivePlatformDensity,
  //     ),