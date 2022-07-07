import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String?> signUp({
    required String firstName,
    lastName,
    email,
    password,
  }) async {
    try {
      var u = await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((cred) {
        _db.collection('users').doc(cred.user?.uid).set({
          'uid': cred.user?.uid,
          'email': email,
          'city': '',
          'photo_url': '',
        });
      });
      u.user!.updateDisplayName(firstName + ' ' + lastName);
      // u.user!.updatePhotoURL();
      // print(u.user!.uid);
      return 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'Password lemah.';
      } else if (e.code == 'email-already-in-use') {
        return 'Email sudah digunakan.';
      } else if (e.code == 'invalid-email') {
        return 'Email tidak valid.';
      } else {
        return e.message;
      }
    } catch (e) {
      return e.toString();
    }
  }
}
