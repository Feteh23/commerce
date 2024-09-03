import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;  // Store the current user

  AuthService() {
    _auth.authStateChanges().listen((User? user) {
      this.user = user;
      notifyListeners();  // Notify listeners when the authentication state changes
    });
  }

  // Sign Up
  Future<void> signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      throw e;  // Re-throw the error to handle it in the UI
    }
  }

  // Sign In
  Future<void> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      throw e;  // Re-throw the error to handle it in the UI
    }
  }

  // Sign Out
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw e;  // Re-throw the error to handle it in the UI
    }
  }
}