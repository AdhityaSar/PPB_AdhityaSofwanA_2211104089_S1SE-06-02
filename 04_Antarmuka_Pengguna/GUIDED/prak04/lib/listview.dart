import 'package:flutter/material.dart';

class listviewscreen extends StatelessWidget {
  const listviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('latihan list view'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        // ScrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
            child: Center(child: Text("type A")),
          ),
        ],
      ),
    );
  }
}