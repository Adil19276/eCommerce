import 'package:ecommerce/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class trans_list extends StatefulWidget {
  const trans_list({super.key});

  @override
  State<trans_list> createState() => _trans_listState();
}

class _trans_listState extends State<trans_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
          'Transaction History',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 3,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // height: 30,
                        decoration: BoxDecoration(
                            color: Themecolor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "FlutterWave",
                            style: TextStyle(color: Themecolor),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text("t-1543-p-5"),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.copy)
                        ],
                      ),
                      Text("jun 4,2025")
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, bottom: 10, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "\$ 169.00",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Themecolor),
                        ),
                        Text(
                          "Pending",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 3,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // height: 30,
                        decoration: BoxDecoration(
                            color: Themecolor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "FlutterWave",
                            style: TextStyle(color: Themecolor),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text("t-1533-p-4"),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.copy)
                        ],
                      ),
                      Text("jun 4,2025")
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, bottom: 10, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "\$ 199.00",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Themecolor),
                        ),
                        Text(
                          "Pending",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
