import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pet_card extends StatefulWidget {
  const pet_card({super.key});

  @override
  State<pet_card> createState() => _pet_cardState();
}

class _pet_cardState extends State<pet_card> {
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
          'Pet',
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
                    "All Home appliances",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // buildMenuItem(Icons.favorite, "Other"),

            buildMenuItem(
                Image.network(
                    "https://static.vecteezy.com/system/resources/thumbnails/002/098/203/small_2x/silver-tabby-cat-sitting-on-green-background-free-photo.jpg"),
                "Cats"),
            buildMenuItem(
                Image.network(
                    "https://images.unsplash.com/photo-1611003228941-98852ba62227?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFieSUyMGRvZ3xlbnwwfHwwfHx8MA%3D%3D"),
                "Dogs"),
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
