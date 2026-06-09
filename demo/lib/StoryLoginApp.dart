import 'package:flutter/material.dart';

class StoryLoginApp extends StatelessWidget {
  const StoryLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // BACKGROUND IMAGE
          Image.asset(
            "assets/images/1.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          // LOGIN CONTAINER
          Positioned(
            left: 20,
            top: 410,

            child: Container(
              width: 370,
              height: 480,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                children: [

                  SizedBox(height: 20),

                  Container(
                    margin: EdgeInsets.all(15),

                    child: Column(
                      children: [

                        // EMAIL FIELD
                        TextFormField(
                          decoration: InputDecoration(

                            hintText: "Email Address",

                            prefixIcon: Icon(Icons.email),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        // PASSWORD FIELD
                        TextFormField(

                          obscureText: true,

                          decoration: InputDecoration(

                            hintText: "Password",

                            prefixIcon: Icon(Icons.lock),

                            suffixIcon: Icon(Icons.visibility_off),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),

                        SizedBox(height: 11),

                        // FORGOT PASSWORD
                        Align(
                          alignment: Alignment.centerRight,

                          child: GestureDetector(

                            onTap: () {
                              print("Forgot Password Clicked");
                            },

                            child: Text(
                              "Forgot Password?",

                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        // LOGIN BUTTON
                        SizedBox(
                          width: double.infinity,

                          child: ElevatedButton(

                            onPressed: () {
                              print("Login button clicked");
                            },

                            style: ElevatedButton.styleFrom(

                              backgroundColor: Colors.deepPurple,

                              padding: EdgeInsets.symmetric(
                                vertical: 15,
                              ),

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),

                            child: Text(
                              "Login",

                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 25),

                        // DIVIDER
                        Row(

                          children: [

                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),

                            SizedBox(width: 10),

                            Text(
                              "or continue with",

                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),

                            SizedBox(width: 10),

                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 25),

                        // GOOGLE + APPLE BUTTONS
                        Row(
                          children: [

                            // GOOGLE BUTTON
                            Expanded(
                              child: OutlinedButton.icon(

                                onPressed: () {
                                  print("Google clicked");
                                },

                                icon: Icon(
                                  Icons.g_mobiledata,
                                  color: Colors.red,
                                  size: 30,
                                ),

                                label: Text(
                                  "Google",

                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),

                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 12,
                                  ),

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: 15),

                            // APPLE BUTTON
                            Expanded(
                              child: OutlinedButton.icon(

                                onPressed: () {
                                  print("Apple clicked");
                                },

                                icon: Icon(
                                  Icons.apple,
                                  color: Colors.black,
                                  size: 24,
                                ),

                                label: Text(
                                  "Apple",

                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),

                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 12,
                                  ),

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 25),

                        // REGISTER SECTION
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [

                            Text(
                              "Don't have an account?",

                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),

                            SizedBox(width: 5),

                            GestureDetector(

                              onTap: () {
                                print("Register clicked");
                              },

                              child: Text(
                                "Register",

                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // CHARACTER IMAGE
          Positioned(
            left: 40,
            top: 150,
            height: 350,
            width: 350,

            child: Image.asset(
              "assets/images/2.png",
            ),
          ),

          // TITLE
          Positioned(
            top: 70,
            left: 75,

            child: Text(
              "Welcome Back!",

              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: "Arial",
                color: Colors.deepPurple,
              ),
            ),
          ),

          // SUBTITLE
          Positioned(
            top: 130,
            left: 113,

            child: Text(
              "Let's Continue your",

              style: TextStyle(
                fontSize: 20,
                fontFamily: "Arial",
                color: Colors.deepPurple,
              ),
            ),
          ),

          // STORY JOURNEY
          Positioned(
            top: 160,
            left: 130,

            child: Row(
              children: [

                Text(
                  "story journey",

                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Arial",
                    color: Colors.deepPurple,
                  ),
                ),

                SizedBox(width: 5),

                Icon(
                  Icons.book,
                  size: 24,
                  color: Colors.deepPurple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}