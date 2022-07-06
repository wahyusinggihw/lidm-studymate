import 'package:flutter/material.dart';
import 'package:study_mate/main/auth/_login.dart';
import 'package:study_mate/main/bottomBar.dart';
import 'package:study_mate/main/quad.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => BottomBar(),
      // '/': (context) => BottomBar(),
    });
  }
}
