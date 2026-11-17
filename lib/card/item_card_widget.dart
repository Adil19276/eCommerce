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

class ItemdataCardWidget extends StatefulWidget {
  final Map<String, dynamic> itemdata;
  final int index;
  const ItemdataCardWidget({super.key, required this.itemdata, required this.index});

  @override
  State<ItemdataCardWidget> createState() => _ItemCardWidgetState();
}

class _ItemCardWidgetState extends State<ItemdataCardWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        child: Stack(
          children: [
            Container(
              width: 240,
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
                    width: 240,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            widget.itemdata['image'],
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            height: 20,
                            // width: 50,
                            decoration: BoxDecoration(
                              color: Themecolor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Text(
                                "  Featured  ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.itemdata['price'],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Themecolor),
                        ),
                        Text(
                          widget.itemdata['title'],
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
                            Text(widget.itemdata['location'],
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
                            Text(widget.itemdata['time'],
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
                left: 180,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                     if(isFavorite){isFavorite=false;
                     }else
                     isFavorite=true;
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
                            :
                        Icons.favorite_border_outlined,
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
