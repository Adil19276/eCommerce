//import 'package:eclassify_app/block_users.dart';
import 'package:ecommerce/choose_language.dart';
import 'package:ecommerce/color.dart';
import 'package:ecommerce/firebase_services/auth_services.dart';
//import 'package:eclassify_app/location.dart';
//import 'package:eclassify_app/other_loctaion.dart';
import 'package:ecommerce/profile_list/FAQs.dart';
import 'package:ecommerce/profile_list/about_us.dart';
import 'package:ecommerce/profile_list/blogs.dart';
import 'package:ecommerce/profile_list/contact_us.dart';
import 'package:ecommerce/profile_list/favorite_profile.dart';
import 'package:ecommerce/profile_list/featured_ads.dart';
import 'package:ecommerce/profile_list/my_review.dart';
import 'package:ecommerce/profile_list/notification.dart';
import 'package:ecommerce/profile_list/privacy_policy.dart';
import 'package:ecommerce/profile_list/subscription.dart';
import 'package:ecommerce/profile_list/terms_condition.dart';
import 'package:ecommerce/profile_list/trans_list.dart';
import 'package:ecommerce/profile_list/update_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    // final authService = AuthService();
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  content: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: AssetImage("assets/delete_acc.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Logout Confirmation",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Are you sure you want to\nlogout?",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                               onTap: (){
                                Navigator.pop(context);
                               },
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                              //  authService.signOut(context);
                              },
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Themecolor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Icon(
                    CupertinoIcons.power,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          )
        ],
        title: Text(
          'My Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => update_profile(),
                        ),
                      );
                    },
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Themecolor,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image(
                          image: NetworkImage(
                              "https://cdn-icons-png.freepik.com/512/16190/16190871.png"),
                          color: Themecolor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mr Bean",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: Text("mrbean317@gmail.com"),
                      ),
                      Container(
                        height: 25,
                        decoration: BoxDecoration(
                          color: Themecolor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "Get Verification Badge",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Options List
              buildMenuItem(Icons.emoji_events, "My Featured Ads", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => featured_ads(),
                  ),
                );
              }),
              buildMenuItem(Icons.play_circle_fill, "Subscription", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => subscription(),
                  ),
                );
              }),
              buildMenuItem(Icons.receipt_long, "Transaction History", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => trans_list(),
                  ),
                );
              }),
              buildMenuItem(Icons.reviews, "My Reviews", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => my_review(),
                  ),
                );
              }),
              buildMenuItem(Icons.language, "Language", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => choose_language(),
                  ),
                );
              }),
              buildSwitchItem(Icons.brightness_6, "Dark Theme"),
              buildMenuItem(Icons.notifications, "Notifications", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => notification(),
                  ),
                );
              }),
              buildMenuItem(Icons.article, "Blogs", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => blogs(),
                  ),
                );
              }),
              buildMenuItem(Icons.favorite, "Favourite", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => favorite_profile(),
                  ),
                );
              }),
              buildMenuItem(Icons.help, "FAQs", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FAQs(),
                  ),
                );
              }),
              buildMenuItem(Icons.share, "Share this App", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => featured_ads(),
                  ),
                );
              }),
              buildMenuItem(Icons.star_rate_rounded, "Rate us", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => featured_ads(),
                  ),
                );
              }),
              buildMenuItem(Icons.perm_phone_msg_rounded, "Contact us", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => contact_us(),
                  ),
                );
              }),
              buildMenuItem(Icons.info, "About us", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => about_us(),
                  ),
                );
              }),
              buildMenuItem(Icons.pending_actions_rounded, "Terms & Conditions",
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => terms_condition(),
                  ),
                );
              }),
              buildMenuItem(Icons.privacy_tip_rounded, "Privacy Policy", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => privacy_policy(),
                  ),
                );
              }),
              buildMenuItem(CupertinoIcons.delete_solid, "Delete Account", () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    content: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(
                            image: AssetImage("assets/delete_vector.png"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Deleting Account?",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "● Your ads and Transactions\n  history will br deleted.",
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                    "● Account details can't be\n  recovered."),
                              ),
                              Text("● Subscriptions will be\n  cancelled."),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                    "● Saved preferences and\n  messages will be lost."),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "No",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Themecolor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Delete",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
          ),
          child: ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.cyan.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Icon(icon, color: Colors.cyan),
            ),
            title: Text(title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18),
            // onTap: () {},
          ),
        ),
      ),
    );
  }

  Widget buildSwitchItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
              color: Colors.cyan.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(8),
            child: Icon(icon, color: Colors.cyan),
          ),
          title: Text(title,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          trailing: Switch(
            value: false,
            onChanged: (val) {},
          ),
        ),
      ),
    );
  }
}
