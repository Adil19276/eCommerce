import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class car_vehicle_card extends StatefulWidget {
  const car_vehicle_card({super.key});

  @override
  State<car_vehicle_card> createState() => _car_vehicle_cardState();
}

class _car_vehicle_cardState extends State<car_vehicle_card> {
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
          'Car & Vehicles',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      "All Cars & Vehicles",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              
              buildMenuItem(
                  Image.network(
                      "https://drivingtestsuccess.com/wp-content/uploads/2023/10/Motorcycle-or-scooter-whats-the-differnce-1920.jpg"),
                  "Motorcycles & Scooters"),
              buildMenuItem(
                  Image.network(
                      "https://media.istockphoto.com/id/543181168/photo/heavy-hauling.jpg?s=612x612&w=0&k=20&c=6xV1DSf3nPpZPYs7zV2O4YNeT3QQogEMrhx0hhfVPRI="),
                  "Heavy vehicles"),
              buildMenuItem(
                  Image.network(
                      "https://thumbs.dreamstime.com/b/many-auto-parts-done-d-29896497.jpg"),
                  "Auto Accessories & Parts"),
              buildMenuItem(
                  Image.network(
                      "https://robbreport.com/wp-content/uploads/2024/08/temerario01.jpg?w=800"),
                  " Cars"),
              
              buildMenuItem(
                  Image.network(
                      "https://wrteamdev.github.io/eClassify/images/logo/favicon.png"),
                  "Other"),

              SizedBox(height: 16),
            ],
          ),
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