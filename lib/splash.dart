import 'dart:async';

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/after_splash.dart';
import 'package:ecommerce/bottom_bar.dart';
import 'package:ecommerce/firebase_services/auth_services.dart';
// import 'package:ecommerce/home.dart';
// import 'package:ecommerce/firebase_services/auth_services.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {

      // final authService = AuthService();
      //   authService.getCurrentUser();
      // final auth = FirebaseAuth.instance;

  

      // if (auth.currentUser ==null){
        Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => after_splash(),
        ),
      );
      // }else{
 Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>CustomNavBar()
        ),
      );
      // }
     

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image(image: AssetImage('assets/favicon.png'),
              ),
            ),
          ),
          const Text(
            "eClassify",
            style: TextStyle(
                letterSpacing: 1.8,
                height: 1.8,
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          const Text(
            '"Buy & Sell Anything"',
            style: TextStyle(
                height: 1.2,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
