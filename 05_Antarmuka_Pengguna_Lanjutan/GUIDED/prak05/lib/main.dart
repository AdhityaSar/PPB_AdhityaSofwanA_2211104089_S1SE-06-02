import 'package:flutter/material.dart';
import 'package:prak05/customscrollview.dart';
import 'package:prak05/flexibleexpanded.dart';
import 'package:prak05/listviewseparated.dart';
import 'package:prak05/listview.dart';

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
      // home: Listview()
      // home: Listviewseparated(),
      // home: FlexibleExpandedScreen(),
      home: Custom(),

    );
  }
}
