import 'package:ecommerce/color.dart';
import 'package:ecommerce/dummy.dart';
// import 'package:ecommerce/filter.dart';
import 'package:ecommerce/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class classified extends StatefulWidget {
  const classified({super.key});

  @override
  State<classified> createState() => _classifiedState();
}

class _classifiedState extends State<classified> {
  
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
          'Classifieds',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "All in Classified",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Column(
                children:  classifieds.map((classified) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Themecolor.withOpacity(0.1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.network(
                                  classified['image']!,
                                  color: Themecolor,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(classified['label']!),
                            Spacer(),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (classified != items.last) Divider(),
                    ],
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
