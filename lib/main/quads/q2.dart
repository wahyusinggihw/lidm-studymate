import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_mate/main/bottom_bar.dart';
import 'package:study_mate/main/quads/quads_model.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Q2 extends StatefulWidget {
  const Q2({Key? key}) : super(key: key);

  @override
  State<Q2> createState() => Q2State();
}

class Q2State extends State<Q2> {
  bool formEmpty = false;
  bool addTask = true;
  var snackBarTrigger = 0;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    TextEditingController _q1TextController = TextEditingController();

    final quadModel = Provider.of<QuadModel>(context);

    //Stream list menampilkan semua docs dalam listtile
    Stream<QuerySnapshot> _q2Stream = quadModel.streamList('q2');
    // Stream preview di limit 3 docs saja
    Stream<QuerySnapshot> _q2StreamPreview = quadModel.streamPreview('q2');

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
                          child: Text("Schedule it!",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: colorOrange)),
                        ),
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: StreamBuilder(
                            stream: _q2StreamPreview,
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (snapshot.hasData) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: snapshot.data!.docs.length,
                                      itemBuilder: (context, index) {
                                        final DocumentSnapshot
                                            documentSnapshot =
                                            snapshot.data!.docs[index];

                                        if (snapshot.data!.docs.isNotEmpty) {
                                          return Text(
                                              "\u2022 " +
                                                  documentSnapshot['task'],
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                              ));
                                        } else {
                                          return Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "Deadline tugas hari ini qweqweqwe",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                  )),
                                              Text(
                                                  "Deadline tugas hari ini qweqweqwe",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                  )),
                                              Text(
                                                  "Deadline tugas hari ini qweqweqwe",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                  )),
                                            ],
                                          );
                                        }
                                      },
                                    ),
                                    // Text("Deadline tugas hari ini qweqweqwe",
                                    //     overflow: TextOverflow.ellipsis,
                                    //     style: GoogleFonts.poppins(
                                    //       fontSize: 10,
                                    //       fontWeight: FontWeight.w600,
                                    //     )),
                                    // Text("Deadline tugas hari ini qweqweqwe",
                                    //     overflow: TextOverflow.ellipsis,
                                    //     style: GoogleFonts.poppins(
                                    //       fontSize: 10,
                                    //       fontWeight: FontWeight.w600,
                                    //     )),
                                    // Text("Deadline tugas hari ini qweqweqwe",
                                    //     overflow: TextOverflow.ellipsis,
                                    //     style: GoogleFonts.poppins(
                                    //       fontSize: 10,
                                    //       fontWeight: FontWeight.w600,
                                    //     )),
                                  ],
                                );
                                // return ListView.builder(
                                //   physics: const NeverScrollableScrollPhysics(),
                                //   shrinkWrap: true,
                                //   itemCount: snapshot.data!.docs.length,
                                //   itemBuilder: (context, index) {
                                //     final DocumentSnapshot documentSnapshot =
                                //         snapshot.data!.docs[index];

                                //     if (snapshot.data!.docs.isNotEmpty) {
                                //       return Text(documentSnapshot['task'],
                                //           overflow: TextOverflow.ellipsis,
                                //           style: GoogleFonts.poppins(
                                //             fontSize: 10,
                                //             fontWeight: FontWeight.w600,
                                //           ));
                                //     } else {
                                //       return Center(
                                //         child: Text('loading...',
                                //             style: GoogleFonts.poppins(
                                //                 color: Colors.black,
                                //                 fontSize: 10,
                                //                 fontWeight: FontWeight.w600)),
                                //       );
                                //     }
                                //   },
                                // );
                              } else {
                                return Text("no data");
                              }
                            },
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomCenter,
                          child: Text("Q2",
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
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  StreamBuilder(
                    stream: _q2Stream,
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            final DocumentSnapshot documentSnapshot =
                                snapshot.data!.docs[index];

                            if (snapshot.data!.docs.isNotEmpty) {
                              return Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 4, 20, 4),
                                child: Material(
                                  borderRadius: BorderRadius.circular(15),
                                  elevation: 2,
                                  // Navigator.pushNamed(context, '/detail-barber');
                                  child: ListTile(
                                    dense: true,
                                    tileColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    title: Text(
                                      documentSnapshot['task'],
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    trailing: IconButton(
                                      color: Colors.black,
                                      splashRadius: 20,
                                      iconSize: 20,
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.red,
                                      ),
                                      onPressed: () {
                                        // print(quadModel.getCurrentQuad);
                                        quadModel.deleteQuad(
                                            quad: quadModel.getCurrentQuad,
                                            task: documentSnapshot['task']);
                                      },
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return Center(
                                child: Text('loading...',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600)),
                              );
                            }
                          },
                        );
                      } else {
                        return Center(
                          child: Text('loading...',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600)),
                        );
                      }
                    },
                  ),
                  Form(
                    key: _formKey,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 16, bottom: 80),
                          // padding: EdgeInsets.symmetric(
                          //   horizontal: 15,
                          // ),
                          child: Material(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: TextFormField(
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w600),
                                controller: _q1TextController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      left: 8, top: 15, bottom: 15),
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
                                        // print("kekirim");
                                        quadModel.addQuad(
                                            quad: quadModel.currentQuad,
                                            task: _q1TextController.text);
                                        _q1TextController.clear();
                                      } else if (snackBarTrigger == 3) {
                                        var snackBar = SnackBar(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          behavior: SnackBarBehavior.floating,
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
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
