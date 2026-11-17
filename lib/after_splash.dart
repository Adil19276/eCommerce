import 'package:ecommerce/choose_language.dart';
import 'package:ecommerce/email_signup.dart';
// import 'package:eclassify_app/login.dart';
// import 'package:eclassify_app/signup.dart';
import 'package:flutter/material.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';

class after_splash extends StatefulWidget {
  const after_splash({super.key});

  @override
  State<after_splash> createState() => _after_splashState();
}

class _after_splashState extends State<after_splash> {
  PageController _controller = PageController();
  int currentPage = 0;

  List<Map<String, String>> pages = [
    {
      'title': 'Click Photo',
      'subtitle': 'Take a photo of the product you\nwant to let go of.',
      'image': 'assets/1.png', 
    },
    {
      'title': 'Publish your ad',
      'subtitle': 'Enter a description, price and\ncategory of your ad.',
      'image': 'assets/2.png',
    },
    {
      'title': 'Get money',
      'subtitle':
          'Now relax and enjoy the money you\nmade on the product you let go of',
      'image': 'assets/3.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => choose_language(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "En",
                            style: TextStyle(color: Colors.black),
                          ),Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.blue,
                    ),
                        ],
                      ),
                      
                    ),
                    
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => email_signup(),
                          ),
                        );
                      },
                      child: Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Skip",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() => currentPage = index);
                },
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          pages[index]['image']!,
                          fit: BoxFit.cover,
                          height: 200,
                          width: double.infinity,
                        ),
                        SizedBox(height: 30),
                        Text(
                          pages[index]['title']!,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        SizedBox(height: 10),
                        Text(
                          pages[index]['subtitle']!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: index == currentPage ? 20 : 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.teal.shade400,
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: FloatingActionButton(
                    onPressed: () {
                      if (currentPage < pages.length - 1) {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInCubic);
                      }
                    },
                    backgroundColor: Colors.orange.shade800,
                    child: Icon(Icons.arrow_forward,color: Colors.white,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: InkWell(
                onTap: () {
                  if (currentPage == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => email_signup(),
                      ),
                    );
                  } else {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue),
                  child: Center(
                    child: Text(
                      currentPage == 2 ? "Get Started" : "Sign in",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    ));
  }

  // Widget _buildlangcontainer(){
  //   return IntlPhoneField(
  //               onChanged: (value) {
  //                 setState(() {});
  //               },
  //               // controller: controller1,
  //               decoration: InputDecoration(
  //                 contentPadding: EdgeInsets.all(16),
  //                 hintText: "country code",
  //                 prefixIcon: Icon(Icons.arrow_drop_down),
  //                 hintStyle: TextStyle(color: Colors.grey),
  //                 border: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(12),
  //                   borderSide: BorderSide(color: Colors.red),
  //                 ),
  //               ),
  //             );
  // }
}
