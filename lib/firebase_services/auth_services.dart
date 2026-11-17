// import 'package:ecommerce/bottom_bar.dart';
// import 'package:ecommerce/email_signup.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   // SIGN UP
//   Future<String> signUpWithEmail({
//     //required String username,
//     required String email,
//     required String password,
//     required BuildContext context,
//   }) async {
//     try {
//       // Create user in Firebase Auth
//       UserCredential userCredential =
//           await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );

//       //Save user data to Firestore
//       await _firestore.collection('users').doc(userCredential.user!.uid).set({
//         'uid': userCredential.user!.uid,
//         'email': email,
//         'createdAt': DateTime.now(),
//       });

//       Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (context) => CustomNavBar()),
//           (Route<dynamic> route) => false);

//       return "User signed up & data saved successfully!";
//     } on FirebaseAuthException catch (e) {
//       return e.message ?? "Unknown error occurred";
//     }
//   }

//   // SIGN IN
//   Future<String> signInWithEmail({
//     required String email,
//     required String password,
//     required BuildContext context,
//   }) async {
//     try {
//       await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );

//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => CustomNavBar()),
//       );

//       return "User signed in successfully!";
//     } on FirebaseAuthException catch (e) {
//       return e.message ?? "Sign in failed";
//     }
//   }

//   // SIGN OUT
//   Future<void> signOut(BuildContext context) async {
//     await _auth.signOut();
//     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
//       return email_signup();
//     }), (route) => false);
//   }

//   // GET CURRENT USER
//   User? getCurrentUser() {
//     return _auth.currentUser;
//   }
// }
