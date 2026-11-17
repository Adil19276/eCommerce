import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  List<bool> expanded = [false, false, false];
  final List<Map<String, String>> containerData = [
    {
      "title": "What is eClassify?",
      "content":
          "We are a platform dedicated to connecting users with top-rated services."
    },
    {
      "title": "What features does eClassify\noffers?",
      "content": "Your data is protected and never shared without consent."
    },
    {
      "title": "Does eClassify support multiple\nlanguage?",
      "content":
          "You can find answers to common questions about our service here."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'FAQs',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: containerData.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.only(bottom: 16),
            // duration: Duration(milliseconds: 300),
            // curve: Curves.easeInOut,

            // padding: EdgeInsets.all(16),
            // decoration: BoxDecoration(
            //   color: Colors.white,
            //   border: Border.all(color: Colors.grey.shade300),
            //   borderRadius: BorderRadius.circular(12),
            // ),
            // height: expanded[index] ? 180 : 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        containerData[index]['title']!,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        expanded[index]
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                      ),
                      onPressed: () {
                        setState(() {
                          expanded[index] = !expanded[index];
                        });
                      },
                    ),
                  ],
                ),
                if (expanded[index])
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: Text(
                      containerData[index]['content']!,
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                  ),
              ],
            ),
          );
        },
      )),
    );
  }

  Widget Expanded_container(string, index) {
    return Column(
      children: [
        expanded[index]
            ? Text(
                containerData[index]['title']!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            : Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  containerData[index]['content']!,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ),
      ],
    );
  }
}
