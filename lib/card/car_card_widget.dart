// import 'package:eclassify_app/see_all/details_card/cars_detail.dart';
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

class CarCardWidget extends StatefulWidget {
  final Map<String, dynamic> car;
  final int index;
  const CarCardWidget({super.key, required this.car, required this.index});

  @override
  State<CarCardWidget> createState() => _CarCardWidgetState();
}

class _CarCardWidgetState extends State<CarCardWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        child: Stack(
          children: [
            Container(
              width: 200,
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
                            widget.car['image'],
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
                          widget.car['price'],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Themecolor),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                widget.car['title'],softWrap: true,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Themecolor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            const Icon(Icons.location_on_outlined,
                                color: Colors.grey, size: 18),
                            Expanded(
                              child: Text(widget.car['location'],
                                  style: const TextStyle(overflow: TextOverflow.ellipsis,
                                      color: Colors.grey, fontSize: 11)),
                            ),
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
                            Text(widget.car['time'],
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
                left: 150,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isFavorite) {
                        isFavorite = false;
                      } else {
                        isFavorite = true;
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
