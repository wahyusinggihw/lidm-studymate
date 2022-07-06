import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_mate/main/appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_mate/main/bottomBar.dart';

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                        elevation: 3,
                        child: InkWell(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Container(
                            color: Colors.transparent,
                            height: 169,
                            width: 169,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional.topCenter,
                                    child: Text("Do it Now!",
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: globalColor)),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Deadline tugas hari ini qweqweqwe",
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        Text(
                                            "Deadline tugas hari ini qweqweqwe",
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        Text(
                                            "Deadline tugas hari ini qweqweqwe",
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    child: Text("Q1",
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: globalColor)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                      elevation: 3,
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Container(
                          color: Colors.transparent,
                          height: 169,
                          width: 169,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional.topCenter,
                                  child: Text("Scedule it!",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: globalColor)),
                                ),
                                Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Tugas mendatang",
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text("Tugas mendatang",
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text("Tugas mendatang",
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional.bottomCenter,
                                  child: Text("Q2",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffFB8500))),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                      elevation: 3,
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Container(
                          color: Colors.transparent,
                          height: 169,
                          width: 169,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional.topCenter,
                                  child: Text("Do it Now!",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: globalColor)),
                                ),
                                Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Chatting",
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text("Instagram story",
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                          )),
                                      Text("Telepon tidak penting",
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional.bottomCenter,
                                  child: Text("Q3",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffB76100))),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    elevation: 3,
                    child: InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Container(
                        color: Colors.transparent,
                        height: 169,
                        width: 169,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional.topCenter,
                                child: Text("Avoid  it!",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: globalColor)),
                              ),
                              Align(
                                alignment: AlignmentDirectional.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Gosip",
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    Text("Nongkrong",
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    Text("Scrolling social media",
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Text("Q4",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff703B00))),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
