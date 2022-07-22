import 'package:flutter/material.dart';
import 'package:custom_check_box/custom_check_box.dart';
import 'package:study_mate/main/appbar.dart';

class ToDoList extends StatefulWidget {
  ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(150), child: AppBarToDoList()),
      body: Material(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('Daftar',
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
                        color: checkBox ? Colors.grey : Colors.white,
                        child: ListTile(
                          title: Text(
                            'Belajar adalah suatu proses atau upaya yang dilakukan setiap individu untuk mendapatkan perubahan tingkah laku, baik dalam bentuk pengetahuan, keterampilan, sikap dan nilai positif sebagai suatu pengalaman dari berbagai materi yang telah dipelajari.',
                            style: checkBox
                                ? TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    overflow: TextOverflow.ellipsis,
                                    decoration: TextDecoration.lineThrough)
                                : TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                          ),
                          leading: CustomCheckBox(
                            value: checkBox,
                            onChanged: (value) {
                              setState(() {
                                checkBox = value;
                              });
                            },
                          ),
                          trailing: checkBox
                              ? null
                              : IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    print('delete');
                                  }),
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
