// import 'package:eclassify_app/dummy.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class all_properties extends StatefulWidget {
  final List<Map<String,dynamic>>properties;
  final int index;
  const all_properties({super.key, required this.index,required this.properties});

  @override
  State<all_properties> createState() => _all_propertiesState();
}

class _all_propertiesState extends State<all_properties> {
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
          "Top Properties Near You",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: false,
          itemCount: widget.properties.length > 5 ? 4 : widget.properties.length,
          itemBuilder: (_, index) => properties_view(index),
        ),
      ),
    );
  }

  Widget properties_view(int index) {
    final properties=widget.properties[index];
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
                          image: NetworkImage(properties['image']), fit: BoxFit.cover),
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
                          properties['price'],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Themecolor),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          properties['title'],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Themecolor),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.location_on_outlined,
                                color: Colors.grey, size: 18),
                            Text(properties['location'],
                                style: const TextStyle(
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
                            Text(properties['time'],
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
                          widget.properties[index]['fav']=!widget.properties[index]['fav'];
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
                            properties['fav']
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