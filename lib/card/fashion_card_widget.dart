import 'package:flutter/cupertino.dart';
// import 'dart:async';

import 'package:ecommerce/color.dart';
// import 'package:eclassify_app/dummy.dart';
// import 'package:eclassify_app/location.dart';
// import 'package:eclassify_app/other_loctaion.dart';
// import 'package:eclassify_app/search_add.dart';
// import 'package:eclassify_app/utils.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FashionCardWidget extends StatefulWidget {
  final Map<String, dynamic> fashion;
  final int index;
  const FashionCardWidget(
      {super.key, required this.fashion, required this.index});
  @override
  State<FashionCardWidget> createState() => _FashionCardWidgetState();
}

class _FashionCardWidgetState extends State<FashionCardWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        child: Stack(
          children: [
            Container(
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            widget.fashion['image'],
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.fashion['price'],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Themecolor),
                        ),
                        Text(
                          widget.fashion['title'],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Themecolor),
                        ),
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            const Icon(Icons.location_on_outlined,
                                color: Colors.grey, size: 18),
                            Text(widget.fashion['location'],
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 11)),
                          ],
                        ),
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            const Icon(Icons.watch_later_outlined,
                                color: Colors.grey, size: 18),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(widget.fashion['time'],
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 11)),
                          ],
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Positioned(
                top: 130,
                left: 130,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isFavorite) {
                        isFavorite=false; 
                      } else {
                        isFavorite=true;
                      }
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                       isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: Themecolor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
