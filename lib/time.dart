import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class time extends StatefulWidget {
  const time({super.key});

  @override
  State<time> createState() => _timeState();
}

class _timeState extends State<time> {
  final List<Map<String, dynamic>> datatime = [
    {
      "time": "All Time",
    },
    {
      "time": "Today",
    },
    {
      "time": "Within 1 week",
    },
    {
      "time": "Within 2 week",
    },
    {
      "time": "Within 1 month",
    },
    {
      "time": "Within 3 month",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Posted Since',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: List.generate(datatime.length, (index) {
          final item = datatime[index];
          return Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    InkWell(onTap: () {
                      Navigator.pop(context);
                    },
                      child: Text(
                        item['time']!,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              if (index != datatime.length - 1)
                const Divider(
                  thickness: 0.4,
                  color: Colors.grey,
                ),
            ],
          );
        }),
      )),
    );
  }
}
