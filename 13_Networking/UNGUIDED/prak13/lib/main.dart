import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prak13/view/add_note_page.dart';
import 'package:prak13/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Catatan',
      initialRoute: '/', // Rute awal
      getPages: [
        GetPage(
          name: '/', 
          page: () => HomePage()
        ), // Halaman Utama
        GetPage(
          name: '/add', 
          page: () => AddNotePage()
        ), // Halaman Tambah Catatan
      ]
    );
  }
}
