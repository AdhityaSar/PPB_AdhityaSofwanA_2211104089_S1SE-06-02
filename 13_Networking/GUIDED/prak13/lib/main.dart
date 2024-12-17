import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prak13/view/detail_page.dart';
import 'package:prak13/view/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/', 
          page: () => MyHomePage(title: 'Belajar GetX', Text: '',)
        ),
        GetPage(
          name: '/detail', 
          page: () => DetailPage()
        ),
      ]
    );
  }
}