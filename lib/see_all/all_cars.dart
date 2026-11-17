// import 'package:ecommerce/utils.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class all_cars extends StatefulWidget {
  final List<Map<String, dynamic>> cars;
  final int index;
  const all_cars({super.key, required this.cars, required this.index});

  @override
  State<all_cars> createState() => _all_carsState();
}

class _all_carsState extends State<all_cars> {
  bool isfavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Top Cars Near You",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: false,
          itemCount: widget.cars.length > 5 ? 4 : widget.cars.length,
          itemBuilder: (_, index) => cars_view(index),
        ),
      ),
    );
  }

  Widget cars_view(int index) {
    final car= widget.cars[index];
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(car['image']), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          car['price'],
                          style: const TextStyle(overflow: TextOverflow.ellipsis,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Themecolor),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          car['title'],
                          style: const TextStyle(overflow: TextOverflow.ellipsis,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Themecolor),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.location_on_outlined,
                                color: Colors.grey, size: 18),
                            Text(car['location'],
                                style: const TextStyle(overflow: TextOverflow.ellipsis,
                                    color: Colors.grey, fontSize: 11)),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.watch_later_outlined,
                                color: Colors.grey, size: 18),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(car['time'],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.cars[index]['fav']=!widget.cars[index]['fav'];
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
                            car['fav'] == true
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
          ],
        ),
      ),
    );
  }
}
