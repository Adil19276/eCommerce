import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class terms_condition extends StatefulWidget {
  const terms_condition({super.key});

  @override
  State<terms_condition> createState() => _terms_conditionState();
}

class _terms_conditionState extends State<terms_condition> {
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
          'Terms & Conditions',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Terms & Conditions",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              style: TextStyle(height: 1.4),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
    );
  }
}
