import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final double width = Get.width;
  final double height = Get.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: height * 0.06),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/icons/logo.png',
                    fit: BoxFit.cover,
                    scale: 1.5,
                  ),
                ),
                SizedBox(height: 28),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back,",
                            style: TextStyle(
                              fontSize: 0.05 * width,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              // fontFamily: "Poppins",
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Sign in to continue your journey",
                            style: TextStyle(
                              color: Color(
                                0xff898585,
                              ),
                              fontSize: width * 0.04,
                            ),
                          ),
                          SizedBox(height: 36),
                          Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 4),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Masukkan email kamu",
                              hintStyle: TextStyle(
                                color: Color(
                                  0xff898585,
                                ),
                                fontSize: 14,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(width: 1.0),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 0.05 * width,
                                vertical: 0.02 * width,
                              ),
                            ),
                          ),
                          SizedBox(height: 32),
                          Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 4),
                          Obx(
                            () => controller.isPassword.isFalse
                                ? TextField(
                                    decoration: InputDecoration(
                                      hintText: "Masukkan password kamu",
                                      suffixIcon: IconButton(
                                        icon: Icon(Icons.visibility_off),
                                        onPressed: () {
                                          controller.tooglePassword();
                                        },
                                      ),
                                      hintStyle: TextStyle(
                                        color: Color(
                                          0xff898585,
                                        ),
                                        fontSize: 14,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide(width: 1.0),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 0.05 * width,
                                        vertical: 0.02 * width,
                                      ),
                                    ),
                                    obscureText: true,
                                  )
                                : TextField(
                                    decoration: InputDecoration(
                                      hintText: "Masukkan password kamu",
                                      suffixIcon: IconButton(
                                        icon: Icon(Icons.visibility),
                                        onPressed: () {
                                          controller.tooglePassword();
                                        },
                                      ),
                                      hintStyle: TextStyle(
                                        color: Color(
                                          0xff898585,
                                        ),
                                        fontSize: 14,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide(width: 1.0),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 0.05 * width,
                                        vertical: 0.02 * width,
                                      ),
                                    ),
                                  ),
                          ),
                          SizedBox(height: 28),
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 1,
                                  width: 0.31 * width,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 12),
                                Text(
                                  "Or Sign In With",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Container(
                                  height: 1,
                                  width: 0.31 * width,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Stack(
                            children: [
                              Container(
                                width: width,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Google",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xfffEA4335),
                                    padding: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 7,
                                  top: width * 0.017,
                                ),
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Image.asset(
                                  'assets/icons/google.png',
                                  scale: 1,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Don't have an account?",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Get.toNamed("/register");
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        elevation: 0,
                                        padding: EdgeInsets.all(0),
                                      ),
                                      child: Text(
                                        "Sign up",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.1,
                      ),
                      Container(
                        width: width,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              padding: EdgeInsets.all(10)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
