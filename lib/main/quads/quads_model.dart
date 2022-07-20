import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QuadModel {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final CollectionReference quads =
      FirebaseFirestore.instance.collection('quads');

  late String currentQuad;
  // DateTime dateTime = DateTime.now();
  // var dateTime = FieldValue.serverTimestamp();

  Future<String?> addQuad({required String task, quad}) async {
    try {
      quads.doc(_auth.currentUser!.uid).collection(quad).doc(task).set({
        'task': task,
        'created_at': FieldValue.serverTimestamp(),
      });
    } on FirebaseException catch (e) {
      print(e.message);
    }
    return null;
  }

  Future<String?> deleteQuad({required String task, quad}) async {
    try {
      quads.doc(_auth.currentUser!.uid).collection(quad).doc(task).delete();
    } on FirebaseException catch (e) {
      print(e.message);
    }
    return null;
  }

  String get getCurrentQuad {
    return currentQuad;
  }

  set setQuad(String quad) {
    currentQuad = quad;
  }

  Stream<QuerySnapshot> streamPreview(String quad) {
    var _streamPreview = FirebaseFirestore.instance
        .collection('quads')
        .doc(_auth.currentUser!.uid)
        .collection(quad)
        .orderBy('created_at', descending: false)
        .limit(3)
        .snapshots();

    return _streamPreview;
  }

  Stream<QuerySnapshot> streamList(String quad) {
    var _streamList = FirebaseFirestore.instance
        .collection('quads')
        .doc(_auth.currentUser!.uid)
        .collection(quad)
        .orderBy('created_at', descending: false)
        .snapshots();

    return _streamList;
  }
}
