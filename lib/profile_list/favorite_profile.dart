import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class favorite_profile extends StatefulWidget {
  const favorite_profile({super.key});

  @override
  State<favorite_profile> createState() => _favorite_profileState();
}

class _favorite_profileState extends State<favorite_profile> {
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
          'Favorites',
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
