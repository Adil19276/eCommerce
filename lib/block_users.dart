import 'package:ecommerce/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class block_users extends StatefulWidget {
  const block_users({super.key});

  @override
  State<block_users> createState() => _block_usersState();
}

class _block_usersState extends State<block_users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Blocked Users',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/block.png')),
              Text(
                "No Data Found",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Themecolor),
              )
        ],
      ),),
    );
  }
}