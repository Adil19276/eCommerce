import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class clothing_card extends StatefulWidget {
  const clothing_card({super.key});

  @override
  State<clothing_card> createState() => _clothing_cardState();
}

class _clothing_cardState extends State<clothing_card> {
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
          'Clothing & Accessories',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      "All Clothing & AAccessories",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // buildMenuItem(Icons.favorite, "Other"),
              buildMenuItem(
                  Image.network(
                      "https://images.pexels.com/photos/267301/pexels-photo-267301.jpeg?cs=srgb&dl=pexels-pixabay-267301.jpg&fm=jpg"),
                  "Shoes"),
              buildMenuItem(
                  Image.network(
                      "https://images.unsplash.com/photo-1582719188393-bb71ca45dbb9?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2xvdGhpbmclMjBzdG9yZXxlbnwwfHwwfHx8MA%3D%3D"),
                  "Clothing"),
              buildMenuItem(
                  Image.network(
                      "https://i.pinimg.com/736x/9f/70/dd/9f70dda3844063e9c6761334578b88cd.jpg"),
                  "Bags & Wallets"),
              buildMenuItem(
                  Image.network(
                      "https://miro.medium.com/v2/resize:fit:1200/1*w2ZtNewCRB7uakMLKuME6A.jpeg"),
                  "Women's Accessories"),
                  buildMenuItem(
                  Image.network(
                      "https://cupcakesandcashmere.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY0NzU2NTE2MDkwNDIzMjUy/img_9926.jpg"),
                  "Makeup & Skincare"),
              buildMenuItem(
                  Image.network(
                      "https://wrteamdev.github.io/eClassify/images/logo/favicon.png"),
                  "Other"),

              SizedBox(height: 16),
            ],
          ),
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
