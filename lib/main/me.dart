import 'package:flutter/material.dart';
import 'package:study_mate/main/bottom_bar.dart';

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
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Color(0xffFFB703),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(255),
                      elevation: 3,
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipOval(
                          child: Image.network(
                              "https://www.jordanharbinger.com/wp-content/uploads/2018/09/be-the-most-interesting.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Hanosi Wazri",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "hanosi@undiksha.ac.id",
                            style: TextStyle(fontSize: 11, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170.0),
                child: Center(
                  child: Material(
                    borderRadius: BorderRadius.circular(7),
                    elevation: 3,
                    child: Container(
                      height: 61,
                      width: 300,
                      decoration: BoxDecoration(
                          color: colorOrange1,
                          borderRadius: BorderRadius.circular(7)),
                      child: const Center(
                        child: Text(
                          'Aku akan menjadi juara 1 di kelas',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Center(
            child: Container(
              width: 400,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 202, 202, 202),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 20),
                        child: Row(
                          children: const [
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
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 20),
                        child: Row(
                          children: const [
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
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 20),
                        child: Row(
                          children: const [
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
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 20),
                        child: Row(
                          children: const [
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
    );
  }
}
