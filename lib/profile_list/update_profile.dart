import 'package:ecommerce/color.dart';
import 'package:ecommerce/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class update_profile extends StatefulWidget {
  const update_profile({super.key});

  @override
  State<update_profile> createState() => _update_profileState();
}

class _update_profileState extends State<update_profile> {
  bool switch1 = true;
  bool switch2 = true;
  //TextEditingController controller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(color: Themecolor, width: 3),
                            shape: BoxShape.circle),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Themecolor.withOpacity(0.2),
                                  shape: BoxShape.circle),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Image(
                                      image: NetworkImage(
                                        "https://static.thenounproject.com/png/629576-200.png",
                                      ),
                                      color: Themecolor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 90,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Themecolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 100,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                                  child: Icon(
                                                    Icons.photo_library,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Text("Photo Gallery")
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                                  child: Icon(
                                                    Icons.camera_alt,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Text("Camera")
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ));
                          },
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Full Name ",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400, height: 2),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  // controller: controller1,
                  decoration: InputDecoration(
                    hintText: "write your name ",
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
              // SizedBox(
              //   height: 10,
              // ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Email Address ",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400, height: 2),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  //controller: controller1,
                  decoration: InputDecoration(
                    hintText: "Email or phone number ",
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
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Phone Number ",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400, height: 2),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                child: IntlPhoneField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  //controller: controller1,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintText: "Phone Number",
                    prefixIcon: Icon(Icons.arrow_drop_down),
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Address ",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400, height: 2),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  //controller: controller1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    fillColor: Colors.grey,
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Notification ",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400, height: 2),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          switch1 ? "Enabled" : "Disabled",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      Switch(
                        value: switch1,
                        onChanged: (value) {
                          setState(() {
                            switch1 = value;
                          });
                        },
                        activeColor: Themecolor,
                      ),
                    ],
                  ),
                ),
              ),

              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Show Contact Info",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400, height: 2),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          switch2 ? "Enabled" : "Disabled",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      Switch(
                        value: switch2,
                        onChanged: (value) {
                          setState(() {
                            switch2 = value;
                          });
                        },
                        activeColor: Themecolor,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile(),
                      ),
                    );
                  },
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Themecolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Update Profile",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
