import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:study_mate/main/bottom_bar.dart';

class CustomAppBarChart extends StatefulWidget {
  const CustomAppBarChart({Key? key}) : super(key: key);

  @override
  State<CustomAppBarChart> createState() => _AppBarState();
}

class _AppBarState extends State<CustomAppBarChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 287,
            decoration: const BoxDecoration(
                color: Color(0xffFFB703),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(82))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
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
            decoration: const BoxDecoration(
                color: Color(0xffFFB703),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(82))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
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

class AppBarToDoList extends StatefulWidget {
  const AppBarToDoList({Key? key}) : super(key: key);

  @override
  State<AppBarToDoList> createState() => _AppBarToDoListState();
}

class _AppBarToDoListState extends State<AppBarToDoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 287,
            decoration: const BoxDecoration(
                color: Color(0xffFFB703),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(82))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
            child: Text("To Do List",
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
            decoration: const BoxDecoration(
                color: Color(0xffFFB703),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(82))),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25),
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

class CustomAppBarSignIn extends StatelessWidget {
  const CustomAppBarSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: WaveClipperTwo(),
        child: Container(
          alignment: Alignment.centerLeft,
          height: 238,
          width: double.infinity,
          color: colorOrange,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back!",
                  style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                Text(
                  "SIGN IN",
                  style: GoogleFonts.poppins(
                      fontSize: 62,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAppBarSignUp extends StatelessWidget {
  const CustomAppBarSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: WaveClipperTwo(),
        child: Container(
          alignment: Alignment.centerLeft,
          height: 238,
          width: double.infinity,
          color: colorOrange,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome!",
                  style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                Text(
                  "SIGN UP",
                  style: GoogleFonts.poppins(
                      fontSize: 62,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
