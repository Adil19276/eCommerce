import 'package:ecommerce/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class my_ads extends StatefulWidget {
  const my_ads({super.key});

  @override
  State<my_ads> createState() => _my_adsState();
}

class _my_adsState extends State<my_ads> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'My Addvertisemnet',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _Buildtab("All Ads", 0),
                  SizedBox(
                    width: 10,
                  ),
                  _Buildtab("Featuerd", 1),
                  SizedBox(
                    width: 10,
                  ),
                  _Buildtab("Live", 2),
                  SizedBox(
                    width: 10,
                  ),
                  _Buildtab("Deactivate", 3),
                  SizedBox(
                    width: 10,
                  ),
                  _Buildtab("Under review", 4),
                  SizedBox(
                    width: 10,
                  ),
                  _Buildtab("Sold out", 5),
                  SizedBox(
                    width: 10,
                  ),
                  _Buildtab("Permanent Rejected", 6),
                  SizedBox(
                    width: 10,
                  ),
                  _Buildtab("Soft Rejected", 7),
                  SizedBox(
                    width: 10,
                  ),
                  _Buildtab("Resubmitted", 8),
                  SizedBox(
                    width: 10,
                  ),
                  _Buildtab("Expired", 9),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: selectedindex,
              children: [
                _tabscreen(),
                _tabscreen(),
                _tabscreen(),
                _tabscreen(),
                _tabscreen(),
                _tabscreen(),
                _tabscreen(),
                _tabscreen(),
                _tabscreen(),
                _tabscreen(),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget _Buildtab(String Label, int index) {
    final bool isselected = selectedindex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: isselected ? Themecolor : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            Label,
            style: TextStyle(
              fontSize: 18,
              color: isselected ? Colors.white : Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _tabscreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage("assets/block.png"),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "No Ads found",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Themecolor),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "There are currently no ads available. Start\nby creating your fisrt ad now!",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
