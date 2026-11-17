// import 'package:eclassify_app/dummy.dart';
import 'package:ecommerce/scroller_card/computers_screen.dart';
import 'package:ecommerce/scroller_card/furnituer_card.dart';
import 'package:ecommerce/scroller_card/home_appliances.dart';
import 'package:ecommerce/scroller_card/more_card.dart';
import 'package:ecommerce/scroller_card/pet_card.dart';
import 'package:ecommerce/scroller_card/property_card.dart';
import 'package:ecommerce/scroller_card/sports_card.dart';
import 'package:ecommerce/utils.dart';
import 'package:flutter/material.dart';
import 'cameras_card.dart';
import 'car_vehicle_card.dart';
import 'clothing_card.dart';
import 'console_screen.dart';
import 'electronic_card.dart';
import 'jewelry_card.dart';
import 'jobs_card.dart';
import 'mobile_screen.dart';
import 'musical_instrument_screen.dart';

class more_option extends StatefulWidget {
  const more_option({super.key});

  @override
  State<more_option> createState() => _more_optionState();
}

class _more_optionState extends State<more_option> {
  bool isGrid = true;
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
          'Categories',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
            itemCount: items.length > 15 ? 3 : items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 15,
                //mainAxisSpacing: 2,
                childAspectRatio: 0.7),
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final more_item = items[index];
              return InkWell(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => home_appliances(),
                      ),
                    );
                  } else if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => furniture_card(),
                      ),
                    );
                  } else if (index == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => clothing_card(),
                      ),
                    );
                  } else if (index == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pet_card(),
                      ),
                    );
                  } else if (index == 4) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => car_vehicle_card(),
                      ),
                    );
                  } else if (index == 5) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => electronic_card(),
                      ),
                    );
                  } else if (index == 6) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => cameras(),
                      ),
                    );
                  } else if (index == 7) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => jewelry_card(),
                      ),
                    );
                  } else if (index == 8) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => mobile_card(),
                      ),
                    );
                  } else if (index == 9) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => console_card(),
                      ),
                    );
                  } else if (index == 10) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => jobs(),
                      ),
                    );
                  } else if (index == 11) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => musical_instrument_screen(),
                      ),
                    );
                  } else if (index == 12) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sports_card(),
                      ),
                    );
                  } else if (index == 13) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => property_card(),
                      ),
                    );
                  } else if (index == 14) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => computers_screen(),
                      ),
                    );
                  }
                },
                child: more_card(
                  item: more_item,
                  index: index,
                ),
              );
            }),
      ),
    );
  }
}
