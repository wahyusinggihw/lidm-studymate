import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QuadModel {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final CollectionReference quads =
      FirebaseFirestore.instance.collection('quads');

  var dateTime = DateTime.now();

  Future<String?> addQ1({required String task}) async {
    try {
      quads.doc(_auth.currentUser!.uid).collection('q1').doc(task).set({
        'task': task,
        'created_at': dateTime,
      });
    } on FirebaseException catch (e) {
      print(e.message);
    }
    return null;
  }
}
