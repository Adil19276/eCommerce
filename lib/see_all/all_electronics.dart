// import 'package:eclassify_app/dummy.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class all_electronics extends StatefulWidget {
  final List<Map<String,dynamic>>electronic;
  final int index;
  const all_electronics({super.key,required this.electronic,required this.index});

  @override
  State<all_electronics> createState() => _all_electronicsState();
}

class _all_electronicsState extends State<all_electronics> {
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
          "Top Electronics Near You",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: false,
           itemCount: widget.electronic.length > 5 ? 4 : widget.electronic.length,
          itemBuilder: (_, index) => electronic_view(index),
        ),
      ),
    );
  }

   Widget electronic_view(int index ) {
    final electronic=widget.electronic[index];
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
                          image: NetworkImage(electronic['image']), fit: BoxFit.cover),
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
                          electronic['price'],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Themecolor),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          electronic['title'],
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
                            Text(electronic['location'],
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
                            Text(electronic['time'],
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
                          widget.electronic[index]['fav']=!widget.electronic[index]['fav'];
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
                           electronic['fav']==true
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