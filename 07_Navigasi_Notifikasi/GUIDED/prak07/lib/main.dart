import 'package:flutter/material.dart';
import 'package:prak07/pages/mypage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyPage(),
    );
  }
}



// Notification

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// void main() => runApp(MaterialApp(
//   theme: ThemeData(
//     appBarTheme: AppBarTheme(color: Colors.amber),
//   ),
//   home: MyApp(),
//   debugShowCheckedModeBanner: false,
// ));

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

//   @override
//   void initState() {
//     super.initState();
//     // Initialize settings for Android and iOS
//     const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('flutter_devs');
//     const DarwinInitializationSettings initializationSettingsIOS = DarwinInitializationSettings();

//     final InitializationSettings initializationSettings = InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIOS,
//     );

//     flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: (NotificationResponse response) async {
//         onSelectNotification(response.payload ?? '');
//       },
//     );
//   }

//   Future onSelectNotification(String payload) async {
//     return Navigator.of(context).push(MaterialPageRoute(builder: (_) {
//       return NewScreen(payload: payload);
//     }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.amber,
//         title: Text('Flutter Notification Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
//               onPressed: () async {
//                 print("Show Notification button pressed");
//                 await showNotification();
//               },
//               child: Text('Show Notification'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future showNotification() async {
//     const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
//       'your_channel_id', 'your_channel_name', 
//       channelDescription: 'your_channel_description',
//       importance: Importance.max,
//       priority: Priority.high,
//       ticker: 'ticker',
//     );
//     const DarwinNotificationDetails iOSPlatformChannelSpecifics = DarwinNotificationDetails();
//     const NotificationDetails platformChannelSpecifics = NotificationDetails(
//       android: androidPlatformChannelSpecifics,
//       iOS: iOSPlatformChannelSpecifics,
//     );

//     await flutterLocalNotificationsPlugin.show(
//       0, // notification ID
//       'Flutter Devs', 
//       'Flutter Local Notification Demo', 
//       platformChannelSpecifics,
//       payload: 'Welcome to the Local Notification Demo',
//     );
//   }
// }

// class NewScreen extends StatelessWidget {
//   final String payload;

//   NewScreen({required this.payload});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(payload),
//       ),
//     );
//   }
// }
