import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_appliances extends StatefulWidget {
  const home_appliances({super.key});

  @override
  State<home_appliances> createState() => _home_appliancesState();
}

class _home_appliancesState extends State<home_appliances> {
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
          'Home appliances',
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
                      "All Home appliances",
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
                      "https://modernelectronics.pk/cdn/shop/collections/ModernCategories-Box-Imagesfrige-600x600.jpg?v=1684427042"),
                  "Refrrigerators & Freezers"),
              buildMenuItem(
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1NnA0jZc0y47JtXPvQgzq2FrpxsplUxuvLMogrmkYVdpMiQ5OF-tS0S7djdCgFZoG3Tc&usqp=CAU"),
                  "Air Conditioners"),
              buildMenuItem(
                  Image.network(
                      "https://aws-obg-image-lb-2.tcl.com/content/dam/brandsite/region/in/blog/pc/detail/blog-october/the-history-of-the-washing-machine-banner.jpg"),
                  "Washing Machine"),
              buildMenuItem(
                  Image.network(
                      "https://modernelectronics.pk/cdn/shop/files/HC-56B_1.jpg?v=1721293305"),
                  "Water Coolers"),
              buildMenuItem(
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWKj8jUk66b8-am8Ply7ebRnFcqDz1SmpnXA&s"),
                  "Blenders & Juicers"),
              buildMenuItem(
                  Image.network(
                      "https://www.ikea.com/global/assets/range-categorisation/images/dishwashers-20825.jpeg?imwidth=400"),
                  "Dishwashers"),
              buildMenuItem(
                  Image.network(
                      "https://www.jbsaeedstudio.com/cdn/shop/collections/Air_Deep_Fryers_-_1080_x_1080.jpg?v=1732187926&width=1024"),
                  "Fryers"),
              buildMenuItem(
                  Image.network(
                      "https://cdn11.bigcommerce.com/s-x0ht6cfst9/images/stencil/500x659/products/5449/385299/301254bec1b85d9bf1bb275740e367f2ae850ddd__93577.1742919332.jpg?c=1"),
                  "Hot Plates & grills"),
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
