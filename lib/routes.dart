import 'package:flutter/material.dart';
import 'package:study_mate/main/auth/login.dart';
import 'package:study_mate/main/auth/register.dart';
import 'package:study_mate/main/bottom_bar.dart';

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
          // '/': (context) => BottomBar(),
        });
  }
}
