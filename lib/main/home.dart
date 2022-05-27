import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 55, top: 20, bottom: 10),
              child: Text("YOUR STUDY GOALS"),
            ),
            Center(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: const Color(0xffFB8500),
                      height: 50,
                      width: 300,
                      child: Text(
                        "Type your study goals here to determine your daily work",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          // color: const Color(0xff219EBC),
                          height: 50,
                          width: 270,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.book,
                                size: 22,
                                color: Colors.white,
                              ),
                              Text("To-Do List")
                            ],
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          // color: const Color(0xff219EBC),
                          height: 50,
                          width: 270,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.book,
                                size: 22,
                                color: Colors.white,
                              ),
                              Text("Weekly Planner")
                            ],
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          // color: const Color(0xff219EBC),
                          height: 50,
                          width: 270,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.timer,
                                size: 22,
                                color: Colors.white,
                              ),
                              Text("Study Timer")
                            ],
                          ),
                        ),
                      )),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
