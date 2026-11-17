import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class my_review extends StatefulWidget {
  const my_review({super.key});

  @override
  State<my_review> createState() => _my_reviewState();
}

class _my_reviewState extends State<my_review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'My Review',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("assets/block.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "No Data found",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Themecolor),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "We are sorry what you were looking for.\nplease try another way",
            textAlign: TextAlign.center,
          )
        ],
      )),
    );
  }
}
