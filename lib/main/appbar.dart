import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_mate/main/achievement.dart';
import 'bottomBar.dart' as bottomBar;

class CustomAppBarChart extends StatefulWidget {
  const CustomAppBarChart({Key? key}) : super(key: key);

  @override
  State<CustomAppBarChart> createState() => _AppBarState();
}

class _AppBarState extends State<CustomAppBarChart> {
  @override
  Widget build(BuildContext context) {
    var achievement = "Achievement";

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 287,
            decoration: BoxDecoration(
                color: Color(0xffFFB703),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(82))),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Text("Home",
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
          )
        ],
      ),
    );
  }
}

class CustomAppBarChart2 extends StatefulWidget {
  const CustomAppBarChart2({Key? key}) : super(key: key);

  @override
  State<CustomAppBarChart2> createState() => _CustomAppBarChart2State();
}

class _CustomAppBarChart2State extends State<CustomAppBarChart2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 287,
            decoration: BoxDecoration(
                color: Color(0xffFFB703),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(82))),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Text("Achievement",
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
          )
        ],
      ),
    );
  }
}

class CustomAppBarQuad extends StatelessWidget {
  const CustomAppBarQuad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 167,
            decoration: BoxDecoration(
                color: Color(0xffFFB703),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(82))),
          ),
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Container(
                child: Text("Quadrant",
                    style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ))
        ],
      ),
    );
  }
}
