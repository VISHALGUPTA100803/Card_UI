//import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CardUI'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                color: Colors.black,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.rocket_launch,
                        color: Colors.red,
                        size: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // First line
                          Container(
                            width: 20.0,
                            height: 4.0,
                            color: Colors.white,
                            alignment: Alignment.centerRight,
                          ),
                          SizedBox(
                            height: 1.0,
                          ),
                          // Second line
                          Container(
                            width: 40.0,
                            height: 4.0,
                            color: Colors.white,
                            alignment: Alignment.centerRight,
                          ),
                          SizedBox(
                            height: 1.0,
                          ),
                          // Third line
                          Container(
                            width: 30.0,
                            height: 4.0,
                            color: Colors.white,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      )
                    ]),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                color: Colors.black,
                child: Text(
                  'Idea Swipe',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w900,
                    fontSize: 50.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
