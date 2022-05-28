import 'package:flutter/material.dart';
import 'package:study_mate/main/appbar.dart';

class Achievement extends StatefulWidget {
  const Achievement({Key? key}) : super(key: key);

  @override
  State<Achievement> createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: PreferredSize(
          child: CustomAppBarChart2(), preferredSize: Size.fromHeight(287)),
    ));
  }
}
