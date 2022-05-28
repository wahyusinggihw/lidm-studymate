import 'package:flutter/material.dart';
import 'package:study_mate/main/appbar.dart';

class Quad extends StatefulWidget {
  const Quad({Key? key}) : super(key: key);

  @override
  State<Quad> createState() => QuadState();
}

class QuadState extends State<Quad> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: PreferredSize(
          child: CustomAppBarQuad(), preferredSize: Size.fromHeight(167)),
    ));
  }
}
