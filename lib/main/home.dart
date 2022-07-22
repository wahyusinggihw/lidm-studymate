import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_mate/main/appbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
// mencoba push clone baru
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color orangeColor = const Color(0xffffb401);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          child: CustomAppBarChart(), preferredSize: Size.fromHeight(287)),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20, bottom: 10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                    child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 0, top: 20, bottom: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "YOUR STUDY GOALS",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: orangeColor,
                                  fontWeight: FontWeight.normal),
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7)),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: const Color(0xffFB8500),
                          height: 55,
                          width: 300,
                          child: Text(
                            "Type your study goals here to determine your daily work",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/list');
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              // color: const Color(0xff219EBC),
                              height: 50,
                              width: 270,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.assignment,
                                    size: 22,
                                    color: Colors.white,
                                  ),
                                  Text("To-Do List")
                                ],
                              ),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              // color: const Color(0xff219EBC),
                              height: 50,
                              width: 270,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.book,
                                    size: 22,
                                    color: Colors.white,
                                  ),
                                  Text("Weekly Planner")
                                ],
                              ),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 10, right: 10),
                      child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              // color: const Color(0xff219EBC),
                              height: 50,
                              width: 270,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.timer,
                                    size: 22,
                                    color: Colors.white,
                                  ),
                                  Text("Study Timer")
                                ],
                              ),
                            ),
                          )),
                    ),
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
