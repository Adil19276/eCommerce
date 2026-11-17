import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sports_card extends StatefulWidget {
  const sports_card({super.key});

  @override
  State<sports_card> createState() => _sports_cardState();
}

class _sports_cardState extends State<sports_card> {
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
          'Sports Equipment',
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
                  Image.network(
                      "https://rukminim2.flixcart.com/image/850/1000/kzsqykw0/cycle/e/x/m/26-sky-jump-matt-red-colour-cycle-26-20-eastman-single-speed-139-original-imagbq7mhmafzaba.jpeg?q=90&crop=false"),
                  "Cycling"),
              buildMenuItem(
                  Image.network(
                      "https://arcticwild.com/wp-content/uploads/2016/07/best-of-Tat-2017-21-e1513287510431-600x400.jpg"),
                  " Rafting"),
              buildMenuItem(
                  Image.network(
                      "https://fitnessdepot.pk/wp-content/uploads/2024/06/Understand-the-Science-of-Fitness-Accessories.jpg"),
                  " Exercise Accessories"),
              buildMenuItem(
                  Image.network(
                      "https://wrteamdev.github.io/eClassify/images/logo/favicon.png"),
                  "Other"),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(Image image, String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.cyan.shade50,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: SizedBox(
                width: 50,
                height: 50,
                child: FittedBox(fit: BoxFit.cover, child: image),
              ),
            ),
          ),

          // Container(
          //   height: 30,
          //   width: 30,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(30)
          //   ),child: FittedBox(fit: BoxFit.fill,
          //     child: image),
          // ),
        ),
        title: Text(title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
        trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18),
        // onTap: () {},
      ),
    );
  }
}
