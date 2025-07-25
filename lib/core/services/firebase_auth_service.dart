import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../errors/exception.dart';

class FirebaseAuthService {

  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

    Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Eception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}");
      if (e.code == 'weak-password') {
        throw CustomException(message: 'Password should be at least 6 characters');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'Email is already in use.');
      } else {
        throw CustomException(
            message: 'An error occurred. Please try again.');
      }
    } catch (e) {
      log("Eception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}");
      throw CustomException(
          message: 'An error occurred. Please try again.');
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Eception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}");
      if (e.code == 'user-not-found') {
        throw CustomException(message: "Email or password is incorrect.");
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: 'Email or password is incorrect.');
      } else {
        throw CustomException(
            message: 'An error occurred. Please try again.');
      }
    }
  }

  Future<User> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return  (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
}

Future<User> signInWithFacebook() async {
  
  final LoginResult loginResult = await FacebookAuth.instance.login();

  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

  return (await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential)).user!;
}

bool isLoggedIn() {
  return FirebaseAuth.instance.currentUser != null;
}
}