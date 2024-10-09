import 'package:flutter/material.dart';
import 'package:prak04/gridview.dart';
import 'package:prak04/listview.dart';
import 'package:prak04/stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: 
      // MyWidget(),
      // listviewscreen(),
      stackscreen(),
      
    );
  }
}