import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class furniture_card extends StatefulWidget {
  const furniture_card({super.key});

  @override
  State<furniture_card> createState() => _furniture_cardState();
}

class _furniture_cardState extends State<furniture_card> {
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
          'Furniture, Home & Garden',
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
                    "All Furniture, Home & Garden",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // buildMenuItem(Icons.favorite, "Other"),
            buildMenuItem(
                Image.network(
                    "https://www.spotlightstores.com/medias/curtains-blinds-landing-curtains.jpg?context=bWFzdGVyfHJvb3R8MTgzODU3fGltYWdlL2pwZWd8cm9vdC9oNDkvaDU4LzEwMjY2MTAzODQwNzk4L2N1cnRhaW5zLWJsaW5kcy1sYW5kaW5nLWN1cnRhaW5zLmpwZ3wwNGIwZTUxMjIzOGZhNjA2YTkzNDE5ODhkYTFiNDc4NDIwNDE1ZWI0YzE3YWU2YWRjMDdhZjc5ZTcwZTU0Mjli"),
                "Curtains & Blind"),
            buildMenuItem(
                Image.network(
                    "https://media.istockphoto.com/id/1473673099/photo/mockup-poster-frame-on-the-wall-of-living-room-luxurious-apartment-background-with.jpg?s=612x612&w=0&k=20&c=5G_5WvpIYNNowH_bt_CMDOPAzislxHWk-RIiUtT2868="),
                "Furnitures"),
            buildMenuItem(
                Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQygcU3v8vM1QGFIe0uAkvemOWMlwFGfUvFzg&s"),
                "Garden & Outdoor"),
            buildMenuItem(
                Image.network(
                    "https://i0.wp.com/musacarpets.com/wp-content/uploads/2023/12/Artisian-Rug-2.jpg?fit=683%2C1024&ssl=1"),
                "Rugs & Carpets"),
            buildMenuItem(
                Image.network(
                    "https://wrteamdev.github.io/eClassify/images/logo/favicon.png"),
                "Other"),

            SizedBox(height: 16),
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
