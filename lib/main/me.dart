import 'package:flutter/material.dart';

class Me extends StatefulWidget {
  const Me({Key? key}) : super(key: key);

  @override
  State<Me> createState() => _MeState();
}

class _MeState extends State<Me> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: (BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Colors.orange,
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: ClipOval(
                                child: Image.network(
                                    "https://www.jordanharbinger.com/wp-content/uploads/2018/09/be-the-most-interesting.jpg"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Text(
                                    "Hanosi Wazri",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    "hanosi@undiksha.ac.id",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 300,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 164, 93, 0)),
                    child: Center(
                      child: Text(
                        'Aku akan menjadi juara 1 di kelas',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 202, 202, 202),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 15, left: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.payment_outlined,
                                      color: Colors.orange,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text(
                                        'Donate',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 15, left: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.orange,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text(
                                        'Profile',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 15, left: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: Colors.orange,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text(
                                        'Pengaturan',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 15, left: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.exit_to_app_rounded,
                                      color: Colors.red,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text(
                                        'Keluar',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
