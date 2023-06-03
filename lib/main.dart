//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:card_ui/titlted_card.dart';

void main() {
  runApp(const MyApp());
}

int count = 0;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
              ),
              Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
                color: Colors.black,
                child: Text(
                  'Get a new idea in each swipe and let your creative juices flow!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  color: Colors.black,
                  child: GestureDetector(
                    onPanUpdate: (details) {
                      if (details.delta.dx > 0) {
                        // Swiped right.
                        setState(() {
                          count++;
                          if (count > 10) {
                            count = 10;
                          }
                        });
                      } //else if (details.delta.dx < 0) {
                      // Swiped left.
                      //}
                    },
                    child: TiltedCard(
                      child: SizedBox(
                        width: 225,
                        height: 300,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Icon(
                              Icons.notifications,
                              color: Colors.brown,
                              size: 60,
                            ),
                            Text(
                              'TripPorter',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'An online platform to help travelers plan and book their trips conviniently',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.cancel,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    '$count',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
