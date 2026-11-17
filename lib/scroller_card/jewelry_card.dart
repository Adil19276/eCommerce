import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class jewelry_card extends StatefulWidget {
  const jewelry_card({super.key});

  @override
  State<jewelry_card> createState() => _jewelry_cardState();
}

class _jewelry_cardState extends State<jewelry_card> {
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
          'Jewelry & Watches',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
           Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      "All Cameras",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
          SizedBox(height: 16),
              buildMenuItem(
                  Image.network(
                      "https://img.drz.lazcdn.com/static/pk/p/9bd9d2e65b748f6317ffa24c187f63bf.jpg_720x720q80.jpg"),
                  "Women"),
              buildMenuItem(
                  Image.network(
                      "https://sdstore.pk/cdn/shop/files/mens_Premium_watches_in_Pakistan.jpg?v=1737048265&width=533"),
                  " Men's Watches"),
              buildMenuItem(
                  Image.network(
                      "https://delawrence.pk/cdn/shop/collections/image.png?v=1737706165"),
                  " Women's Watches"),
              buildMenuItem(
                  Image.network(
                      "https://wrteamdev.github.io/eClassify/images/logo/favicon.png"),
                  "Other"),
        ],
      )),
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
