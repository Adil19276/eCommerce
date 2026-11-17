import 'package:ecommerce/chat.dart';
import 'package:ecommerce/color.dart';
import 'package:ecommerce/home.dart';
import 'package:ecommerce/my_ads.dart';
import 'package:ecommerce/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  String page = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: PandaBar(
        backgroundColor: Colors.grey.shade300,
        buttonData: [
          PandaBarButtonData(
              id: 'Home', icon: CupertinoIcons.house_alt, title: 'Home'),
          PandaBarButtonData(
              id: 'chat', icon: CupertinoIcons.chat_bubble_text, title: 'Chat'),
          PandaBarButtonData(
              id: 'Red',
              icon: Icons.volunteer_activism_outlined,
              title: 'My Ads'),
          PandaBarButtonData(
              id: 'Yellow', icon: CupertinoIcons.person, title: 'Profile'),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {
          showDialog(
            context: context,
            builder: (context) => builddialog(context),
          );
        },
      ),
      body: Builder(
        builder: (context) {
          switch (page) {
            case 'Home':
              return home();
            case 'chat':
              return chat();
            case 'Red':
              return my_ads();
            case 'Yellow':
              return profile();
            default:
              return Container();
          }
        },
      ),
    );
  }

  Widget builddialog(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      contentPadding: const EdgeInsets.all(10),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            const Text(
              "No Package Available",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Please Subscribe to any\npackage to use this\nfunctionality",
                  textAlign: TextAlign.start,
                  style: TextStyle(height: 1.4),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Cancel",
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Themecolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Subscribe"),
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
