import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class blogs extends StatefulWidget {
  const blogs({super.key});

  @override
  State<blogs> createState() => _blogsState();
}

class _blogsState extends State<blogs> {
  final List<Map<String, String>> containerdata = [
    {
      "image":
          "https://t3.ftcdn.net/jpg/04/38/59/88/360_F_438598896_D9pyLmbMZ02CrxURfHxU4nG5UlzXv6Dy.jpg",
      "text": "Discover eClassify: Redefining Classfieds\nfor the Modern era"
    },
    {
      "image":
          "https://static.vecteezy.com/system/resources/previews/019/479/440/non_2x/online-shopping-banner-promotion-with-store-cart-sale-tag-hanger-and-gift-box-illustration-eps-10-vector.jpg",
      "text": "Secure Transaction Made Simple with\n eClassify"
    },
    {
      "image":
          "https://elements-resized.envatousercontent.com/elements-cover-images/0e846a2b-69de-47e3-840d-23e6242c7062?w=433&cf_fit=scale-down&q=85&format=auto&s=a84d4a0ac95b5ae05fcaf6a2a12c8eb77681218cbd2e2a4a97b76dd0690f8a9d",
      "text": "Stay Connected: Exploring eClassify's in-\nApp Chat Feature"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
          'Blogs',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: containerdata.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      
                      child: ClipRRect(borderRadius: BorderRadius.circular(10), 
                        child: Image.network(
                          item["image"]!, fit: BoxFit.cover,
                          // height: 50,
                          // width: 50,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          item["text"]!,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      )),
    );
  }
}
