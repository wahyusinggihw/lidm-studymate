import 'package:flutter/material.dart';
import 'package:study_mate/main/auth/login.dart';
import 'package:study_mate/main/auth/register.dart';
import 'package:study_mate/main/bottom_bar.dart';
import 'package:study_mate/main/quads/q1.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const Login(),
          '/register': (context) => const Register(),
          '/login': (context) => const Login(),
          '/home': (context) => BottomBar(),
          '/q1': (context) => Q1(),
        });
  }
}
