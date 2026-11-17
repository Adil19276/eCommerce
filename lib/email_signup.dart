import 'package:ecommerce/firebase_services/auth_services.dart';
// import 'package:ecommerce/location.dart';
import 'package:ecommerce/mobile_signup.dart';
import 'package:ecommerce/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class email_signup extends StatefulWidget {
  const email_signup({super.key});

  @override
  State<email_signup> createState() => _email_signupState();
}

class _email_signupState extends State<email_signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordShow = true;
  @override
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
            text: TextSpan(
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
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Welcome back",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Login with Email  ",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400, height: 2),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email Address ",
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordShow = !isPasswordShow;
                        });
                      },
                      icon: Icon(
                        isPasswordShow
                            ? Icons.visibility_off
                            :  Icons.visibility,
                        color: Colors.grey,
                      ),
                    ),
                    hintText: "Password ",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    fillColor: Colors.grey,
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  obscureText: isPasswordShow,
                ),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  // onTap: ()  {
                  //   final authService = AuthService();

                  //   authService.signInWithEmail(
                  //       email: emailController.text.trim(),
                  //       password: passwordController.text.trim(), 
                  //       context: context
                  //       );
                  // },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: (emailController.text.isEmpty ||
                              passwordController.text.isEmpty)
                          ? Colors.grey.shade700
                          : Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
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
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signup()));
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: " Sign up",
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Or sign in with"),
              SizedBox(
                height: 20,
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
                                borderRadius: BorderRadius.circular(10)),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => mobile_signup(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Continue with Mobile",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )
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
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              const CircleAvatar(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1,
            ),
          ),
          Row(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
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
            text: TextSpan(
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
