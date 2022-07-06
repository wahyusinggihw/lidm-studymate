import 'package:flutter/material.dart';
import 'package:study_mate/main/achievement.dart';
import 'package:study_mate/main/home.dart';
// import 'package:study_mate/main/_me.dart'';
import 'package:study_mate/main/me.dart';
import 'package:study_mate/main/quad.dart';

Color globalColor = Color(0xffFFB703);

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Home(),
    Quad(),
    Achievement(),
    Me(),
  ];

  void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        // margin: EdgeInsets.only(top: 15),
        // padding: EdgeInsets.only(top: 3),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              // color: Colors.grey.withOpacity(0.5),
              // spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3))
        ]),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onBarTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 10,
          selectedItemColor: Color(0xff023047),
          unselectedItemColor: Color(0xffCCCCCC),
          // backgroundColor: const Color(0xff20639B),
          backgroundColor: Color(0xff023047),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_rounded),
                label: "Quadrant",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.grade),
                label: "Achievement",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "Me",
                backgroundColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
