import 'package:flutter/material.dart';
import 'package:study_mate/main/appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottom_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Achievement extends StatefulWidget {
  const Achievement({Key? key}) : super(key: key);

  @override
  State<Achievement> createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          child: CustomAppBarChart2(), preferredSize: Size.fromHeight(287)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 8),
            child: Container(
              decoration: BoxDecoration(
                color: colorOrange,
                borderRadius: const BorderRadius.all(Radius.circular(7)),
              ),
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 221,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 10,
                    percent: 0.5,
                    center: Text(
                      "50%",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    // progressColor: Color(0xffC2C2C2),
                    progressColor: Colors.white,
                    animation: true,
                    reverse: true,
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            color: Colors.white,
                            width: 11,
                            height: 11,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Complete",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            color: const Color(0xffC2C2C2),
                            width: 11,
                            height: 11,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Uncomplete",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
              elevation: 3,
              child: SizedBox(
                width: 233,
                height: 37,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Kerjakan tugas",
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w600),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        // alignment: Alignment.topRight,
                        width: 57,
                        height: 15,
                        decoration: BoxDecoration(
                            color: colorOrange,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "45 Menit",
                            style: GoogleFonts.poppins(
                                fontSize: 6,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
