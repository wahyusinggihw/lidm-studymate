import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  getUser() {
    return _auth.currentUser;
  }

  Future logOut() async {
    var logout = await _auth.signOut();
    // _auth.authStateChanges();
    return logout;
  }

  Future<String?> signUp({
    required String firstName,
    lastName,
    email,
    password,
  }) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(
              email: email.trim(), password: password)
          .then((cred) {
        cred.user!.updateDisplayName(firstName + ' ' + lastName);
        _db.collection('users').doc(cred.user?.uid).set({
          'uid': cred.user?.uid,
          'email': email,
          'first_name': firstName,
          'last_name': lastName,
          'city': '',
          'photo_url': '',
        });
      });
      // u.user!.updateDisplayName(firstName + ' ' + lastName);
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

  Future<String?> signIn({
    required String email,
    password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email.trim(), password: password);
      return 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'Akun belum terdaftar.';
      } else if (e.code == 'wrong-password') {
        return 'Password salah.';
      } else if (e.code == 'invalid-email') {
        return 'Email tidak valid.';
      } else if (e.code == 'too-many-requests') {
        return 'Login error, coba lagi nanti.';
      } else {
        return e.message;
      }
    } catch (e) {
      return e.toString();
    }
  }
}
