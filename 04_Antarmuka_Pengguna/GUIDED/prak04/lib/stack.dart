import 'package:flutter/material.dart';

class stackscreen extends StatelessWidget {
  const stackscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("latihan stack"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children :[
              Container(
                margin: EdgeInsets.all(5),
                width: 90,
                height: 90,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 90,
                height: 90,
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 90,
                height: 90,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 90,
                height: 90,
                color: Colors.purple,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
