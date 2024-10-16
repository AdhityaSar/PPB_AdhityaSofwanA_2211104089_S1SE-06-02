import 'package:flutter/material.dart';

class Listviewseparated extends StatelessWidget {
  const Listviewseparated({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D'];
    final List<int> colorCodes = <int>[100, 200, 300, 400];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Jenis Listview'),
          backgroundColor: Colors.amberAccent,
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext, int index) {
              return Container(
                  height: 50,
                  color: Colors.amber[colorCodes[index]],
                  child: Center(
                    child: Text('Entry ${entries[index]}'),
                  ));
            },
            itemCount: entries.length,
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                height: 10,
                color: Colors.red,
              );
            }));
  }
}