import 'package:ecommerce/block_users.dart';
import 'package:ecommerce/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => block_users(),
                ),
              );
            },
            child: Icon(
              CupertinoIcons.person_badge_minus_fill,
              color: Colors.black,
            ),
          )
        ],
        title: Text(
          'Posted Since',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: 'Selling'),
                Tab(text: 'Buying'),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              Image(image: AssetImage('assets/chat.png')),
              Text(
                "No chat found. start a new conversation",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Themecolor),
              )
            ],
          ),
          Spacer(),
        ],
      )),
    );
  }
}
