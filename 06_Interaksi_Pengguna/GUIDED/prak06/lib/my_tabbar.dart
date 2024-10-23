import 'package:flutter/material.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Menu Tab Bar"),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.food_bank),
            text: "Menu",
            ),
            Tab(icon: Icon(Icons.calendar_month),
            text: "Calendar",
            ),
            Tab(icon: Icon(Icons.history),
            text: "History",
            ),
          ]),
          backgroundColor: Colors.amber,
        ),
        body: const TabBarView(children: [
          Center(
            child: Text("ini konten menu"),
          ),
          Center(
            child: Text("ini konten calendar"),
          ),
          Center(
            child: Text("ini konten history"),
          ),
        ])
      ),
    );
  }
}