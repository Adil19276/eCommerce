import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class property_card extends StatefulWidget {
  const property_card({super.key});

  @override
  State<property_card> createState() => _property_cardState();
}

class _property_cardState extends State<property_card> {
  final bool isSelected = true; // Example
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
          'Property',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                Text(
                  "All Sports Equipment",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          buildMenuItem(
            bgColor: Colors.blue.withOpacity(0.2),
            iconColor: Colors.blue,
            imageUrl: "https://cdn-icons-png.flaticon.com/512/6684/6684226.png",
            title: "Property For Sale",
          ),
          buildMenuItem(
            bgColor: Colors.red.withOpacity(0.2),
            iconColor: Colors.red,
            imageUrl: "https://cdn-icons-png.freepik.com/512/602/602320.png",
            title: "Property For Rent",
          ),
        ],
      )),
    );
  }

  Widget buildMenuItem({
    required Color bgColor,
    required Color iconColor,
    required String imageUrl,
    required String title,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      // padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: bgColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.network(
              imageUrl,
              width: 24,
              height: 24,
              color: iconColor,
            ),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18),
        onTap: () {
          // Action on tap
        },
      ),
    );
  }
}
