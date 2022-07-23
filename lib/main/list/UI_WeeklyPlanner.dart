import 'package:flutter/material.dart';

class WeeklyPlanner extends StatefulWidget {
  WeeklyPlanner({Key? key}) : super(key: key);

  @override
  State<WeeklyPlanner> createState() => _WeeklyPlannerState();
}

class _WeeklyPlannerState extends State<WeeklyPlanner> {
  bool checkBox = false;
  bool kondisi = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('pressed');
        },
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Colors.green,
      ),
      body: Material(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: kondisi ? Colors.green : Colors.white,
                          ),
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                kondisi = !kondisi;
                              });
                            },
                            title: Text(
                              'Belajar adalah suatu proses atau upaya yang dilakukan setiap individu untuk mendapatkan perubahan tingkah laku, baik dalam bentuk pengetahuan, keterampilan, sikap dan nilai positif sebagai suatu pengalaman dari berbagai materi yang telah dipelajari.',
                              style: TextStyle(
                                fontSize: 15,
                                color: kondisi ? Colors.white : Colors.black,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            trailing: kondisi
                                ? Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        'Selesai',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                  )
                                : IconButton(
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {
                                      print('Delete');
                                    },
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('Minggu Depan',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold)),
                  TextButton(
                    onPressed: null,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.orange,
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: Text(
                          'Tambah',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: checkBox ? Colors.green : Colors.white,
                        ),
                        child: ListTile(
                          onTap: () {
                            setState(() {
                              checkBox = !checkBox;
                            });
                          },
                          title: Text(
                            'Belajar adalah suatu proses atau upaya yang dilakukan setiap individu untuk mendapatkan perubahan tingkah laku, baik dalam bentuk pengetahuan, keterampilan, sikap dan nilai positif sebagai suatu pengalaman dari berbagai materi yang telah dipelajari.',
                            style: TextStyle(
                              fontSize: 15,
                              color: checkBox ? Colors.white : Colors.black,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  print('Delete');
                                },
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.green,
                                ),
                                onPressed: () {
                                  print('Edit');
                                },
                              ),
                            ],
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
      ),
    );
  }
}
