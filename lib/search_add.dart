import 'package:ecommerce/card/search_card.dart';
import 'package:ecommerce/color.dart';
import 'package:ecommerce/filter.dart';
// import 'package:ecommerce/location.dart';
import 'package:ecommerce/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search_add extends StatefulWidget {
  const search_add({super.key});

  @override
  State<search_add> createState() => _search_addState();
}

class _search_addState extends State<search_add> {
  
  bool isFavorite = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {Navigator.pop(context);},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            color: Themecolor,
                          ),
                          hintText: "Search any advertisement.. ",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          fillColor: Colors.grey,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => filter(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.filter_alt_outlined,
                            color: Themecolor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Popular Ads",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Column(
                children: List.generate(search.length, (index) {
                  final searchs = search[index];
                  return SearchCard(search: searchs, index: index);
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
