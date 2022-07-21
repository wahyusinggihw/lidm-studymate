import 'dart:async';

import 'package:flutter/material.dart';
import 'package:study_mate/main/auth/UI_SignIn.dart';
import 'package:study_mate/main/auth/UI_SignUp.dart';
// import 'package:study_mate/main/auth/login.dart';
// import 'package:study_mate/main/auth/register.dart';
import 'package:study_mate/main/bottom_bar.dart';
import 'package:study_mate/main/quads/q1.dart';
import 'package:study_mate/main/quads/q2.dart';
import 'package:study_mate/main/quads/q3.dart';
import 'package:study_mate/main/quads/q4.dart';
import 'package:provider/provider.dart';
import 'main/auth/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  late StreamSubscription<User?> user;
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: authService.getUser() == null ? '/login' : '/home',
        routes: {
          // '/': (context) => const Splash(),
          '/register': (context) => const SignUp(),
          '/login': (context) => const SignIn(),
          '/home': (context) => BottomBar(),
          '/q1': (context) => Q1(),
          '/q2': (context) => Q2(),
          '/q3': (context) => Q3(),
          '/q4': (context) => Q4(),
        });
  }
}
