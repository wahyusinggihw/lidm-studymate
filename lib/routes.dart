import 'package:flutter/material.dart';
import 'package:study_mate/main/List/UI_ToDoList.dart';
import 'package:study_mate/main/auth/UI_SignIn.dart';
import 'package:study_mate/main/auth/UI_SignUp.dart';
// import 'package:study_mate/main/auth/login.dart';
// import 'package:study_mate/main/auth/register.dart';
import 'package:study_mate/main/bottom_bar.dart';
import 'package:study_mate/main/quads/q1.dart';
import 'package:study_mate/main/quads/q2.dart';
import 'package:study_mate/main/quads/q3.dart';
import 'package:study_mate/main/quads/q4.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SignIn(),
          '/register': (context) => const SignUp(),
          '/login': (context) => const SignIn(),
          '/home': (context) => BottomBar(),
          '/q1': (context) => Q1(),
          '/q2': (context) => Q2(),
          '/q3': (context) => Q3(),
          '/q4': (context) => Q4(),
          '/list': (context) => ToDoList(),
        });
  }
}
