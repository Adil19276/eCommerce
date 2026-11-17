import 'package:ecommerce/color.dart';
// import 'package:eclassify_app/utils.dart';
import 'package:flutter/material.dart';

class more_card extends StatefulWidget {
  final Map<String, dynamic> item;
  final int index;
  const more_card({super.key, required this.item, required this.index});

  @override
  State<more_card> createState() => _more_cardState();
}

class _more_cardState extends State<more_card> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
               height: 150,
              // width: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Themecolor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // height: 80,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: NetworkImage(
                              widget.item['image'],
                            ),
                            // fit: BoxFit.cover,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),SizedBox(height: 5,),
                  Text(widget.item['label'],textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
