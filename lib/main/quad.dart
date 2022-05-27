import 'package:flutter/material.dart';

class Quad extends StatefulWidget {
  const Quad({Key? key}) : super(key: key);

  @override
  State<Quad> createState() => QuadState();
}

class QuadState extends State<Quad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Quad"),
    );
  }
}
