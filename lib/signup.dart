import 'package:ecommerce/firebase_services/auth_services.dart';
import 'package:ecommerce/login.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // TextEditingController controller1 = TextEditingController();
  bool ispasswordshow = true;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "By Signing Up/Logging in. You agree to our",
            style: TextStyle(color: Colors.black, height: 2),
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Terms of Service ",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: " and ",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                    text: " Privacy Policy",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Welcome ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sign up  ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 2),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: emailController,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: passwordController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              ispasswordshow = !ispasswordshow;
                            });
                          },
                          icon: Icon(ispasswordshow
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        hintText: "password ",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        fillColor: Colors.grey,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      obscureText: ispasswordshow,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      // onTap: () {
                      //   final authService = AuthService();

                      //   authService.signUpWithEmail(
                      //     email: emailController.text.trim(),
                      //     password: passwordController.text.trim(),
                      //     context: context,
                      //   );
                      // },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: (emailController.text.isEmpty)
                              ? Colors.grey.shade700
                              : Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _builddialog(),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image(
                                  image: AssetImage('assets/google-logo.png')),
                            ),
                            Text(
                              "Continue with Google",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => login()));
                    },
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: " Log in",
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _builddialog() {
    return Container(
      // height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image(
                  image: NetworkImage(
                      "https://wrteamdev.github.io/eClassify/images/logo/favicon.png"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Choose an account",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            "To continue to eClassify",
            style:
                TextStyle(fontSize: 15, fontWeight: FontWeight.w500, height: 2),
          ),
          SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://static1.dualshockersimages.com/wordpress/wp-content/uploads/2024/01/new-jujutsu-kaisen-theory-strongly-suggests-gojo-satoru-s-return.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Goju Rajput",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "gojurajput@gmail.com",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1,
            ),
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(Icons.person_add_alt),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add another account",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "By Signing Up/Logging in. You agree to our",
            style: TextStyle(color: Colors.black, height: 2),
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Terms of Service ",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: " and ",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                    text: " Privacy Policy",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
