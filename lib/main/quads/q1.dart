import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:study_mate/main/appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_mate/main/bottom_bar.dart';
import 'package:study_mate/main/quads/quads_model.dart';
import 'package:provider/provider.dart';

class Q1 extends StatefulWidget {
  const Q1({Key? key}) : super(key: key);

  @override
  State<Q1> createState() => Q1State();
}

class Q1State extends State<Q1> {
  bool formEmpty = false;
  var snackBarTrigger = 0;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    TextEditingController _q1TextController = TextEditingController();

    final quadModel = Provider.of<QuadModel>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: IconButton(
          splashRadius: 25,
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // title: Text("<", style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Material(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
              elevation: 3,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
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
                                  color: colorOrange)),
                        ),
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Deadline tugas hari ini qweqweqwe",
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  )),
                              Text("Deadline tugas hari ini qweqweqwe",
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  )),
                              Text("Deadline tugas hari ini qweqweqwe",
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
                          child: Text("Q1",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: colorOrange)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: _formKey,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 50, bottom: 0),
                        // padding: EdgeInsets.symmetric(
                        //   horizontal: 15,
                        // ),
                        child: Material(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          color: Colors.white,
                          elevation: 3,
                          child: SizedBox(
                            width: 233,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: TextFormField(
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w600),
                                controller: _q1TextController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      left: 8, top: 4, bottom: 2),
                                  border: InputBorder.none,
                                  hintText: 'add.. ',
                                  hintStyle: GoogleFonts.poppins(
                                      color: formEmpty == false
                                          ? Colors.black
                                          : Colors.red,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                  suffixIcon: IconButton(
                                    color: Colors.black,
                                    splashRadius: 20,
                                    iconSize: 20,
                                    onPressed: () {
                                      if (_formKey.currentState!.validate() &&
                                          formEmpty == false) {
                                        print("kekirim");
                                        // quadModel.addQ1(
                                        //     task: _q1TextController.text);
                                        _q1TextController.clear();
                                      } else if (snackBarTrigger == 3) {
                                        var snackBar = SnackBar(
                                          backgroundColor: Colors.red,
                                          duration: Duration(seconds: 4),
                                          content:
                                              Text("Task tidak boleh kosong."),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      }
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    setState(() {
                                      formEmpty = true;
                                      snackBarTrigger += 1;
                                    });
                                    // return 'red';
                                    // formEmpty = true;
                                    return;
                                  }
                                  setState(() {
                                    formEmpty = false;
                                    snackBarTrigger = 0;
                                  });
                                  // formEmpty = false;
                                  // formData.nama = value;
                                  return null;
                                },
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
