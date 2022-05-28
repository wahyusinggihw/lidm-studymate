import 'package:flutter/material.dart';
import 'package:study_mate/main/auth/login.dart';
import 'package:study_mate/main/bottomBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Study Mate',
      home: BottomBar(),
    );
  }
}
