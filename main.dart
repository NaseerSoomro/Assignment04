import 'package:flutter/material.dart';
import 'package:fluuter05/GridViews.dart';
import 'package:fluuter05/ScreenLayout.dart';
// import 'Calculator.dart';
// import 'TodoApp.dart';
import 'ScreenLayout.dart';
// import 'GridViews.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: Calculator(), // Calculator Class
        // body: TodoApp(),       // TodoApp Class
        body: ScreenLayout(),       // ScreenLayout
        // body: GridViews(),       // ScreenLayout


      ), 
    );
  }
}