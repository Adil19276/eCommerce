// import 'dart:math';

import 'package:ecommerce/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class subscription extends StatefulWidget {
  const subscription({super.key});

  @override
  State<subscription> createState() => _subscriptionState();
}

class _subscriptionState extends State<subscription> {
  int selectedIndex = -1;

  final List<Map<String, String>> packages = [
    {
      'title': 'Trial package',
      'line1': '10 Ads .',
      'line2': '30 Days',
      'price': '\$5',
    },
    {
      'title': 'Platinum plan',
      'line1': '20 Ads .',
      'line2': '30 Days',
      'price': '\$10',
    },
    {
      'title': 'Free package',
      'line1': '1 Ad .',
      'line2': '1 Day',
      'price': 'Free',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:
              Text("Subscription Plan", style: TextStyle(color: Colors.black)),
          iconTheme: IconThemeData(color: Colors.black),
          bottom: TabBar(
            indicatorColor: Colors.cyan,
            labelColor: Colors.cyan,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Ads Listing"),
              Tab(text: "Featured Ads"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  planCard("assets/free_tag.png", "Free", "3 Ads Listing",
                      "10 Days", "Free", Colors.green),
                  SizedBox(width: 12),
                  planCard("assets/silver_tag.png", "Silver", "50 Ads Listing",
                      "30 Days", "\$15", Colors.amber),
                  SizedBox(width: 12),
                  planCard("assets/gold_tag.png", "Gold", "Unlimited Ads",
                      "60 Days", "\$29", Colors.orange),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/crown.png',
                      width: 150,
                    ),
                    Text(
                      "Featured ad",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    for (int i = 0; i < packages.length; i++)
                      featureCard(
                        title: packages[i]['title']!,
                        line1: packages[i]['line1']!,
                        line2: packages[i]['line2']!,
                        price: packages[i]['price']!,
                        isSelected: selectedIndex == i,
                        onTap: () {
                          setState(() {
                            selectedIndex = i;
                          });
                        },
                      ),
                    Spacer(),
                    if (selectedIndex != -1)
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Themecolor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            minimumSize: Size(double.infinity, 50),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Pay ${packages[selectedIndex]['price']}",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget planCard(String image, String title, String line1, String line2,
      String price, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 230,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey.shade200)],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/hexagon.png',
                        height: 150,
                        color: Colors.grey.shade300,
                      ),
                      Positioned(
                          right: 50,
                          top: 50,
                          child: Image.asset(
                            image,
                            height: 50,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Row(children: [
                Icon(Icons.download_done, color: Colors.green),
                SizedBox(width: 6),
                Text(line1)
              ]),
              Row(children: [
                Icon(Icons.download_done, color: Colors.green),
                SizedBox(width: 6),
                Text(line2)
              ]),
              SizedBox(height: 20),
              Text("⇨ Multiple images & video"),
              Text("⇨ Standard customer support"),
              Text("⇨ Special ads badge"),
              SizedBox(height: 12),
              Center(
                child: Text(
                  price,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  minimumSize: Size(double.infinity, 40),
                ),
                onPressed: () {},
                child: Text("Purchase this Package"),
              )
            ],
          ),
        ),
      ],
    );
  }
}

Widget featureCard({
  required String title,
  required String line1,
  required String line2,
  required String price,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        // width: 230,
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? Colors.cyan : Colors.grey.shade300,
            width: 2,
          ),
          boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey.shade200)],
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(line1),
                    SizedBox(width: 6),
                    Text(
                      line2,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Text(
              price,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ),
  );
}
