import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF5F7),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              children: [

                const SizedBox(height: 10),

                // Title
                const Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFF5C93),
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Start your adventure with",
                  style: TextStyle(fontSize: 15),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [

                    Text(
                      "amazing stories",
                      style: TextStyle(fontSize: 15),
                    ),

                    SizedBox(width: 5),

                    Icon(Icons.menu_book, size: 18),

                    SizedBox(width: 5),

                    Icon(Icons.star, size: 18),
                  ],
                ),

                const SizedBox(height: 30),

                // Avatar
                Stack(
                  clipBehavior: Clip.none,
                  children: [

                    Container(
                      width: 120,
                      height: 120,

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                        ),
                      ),

                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/girl.png'),
                      ),
                    ),

                    Positioned(
                      bottom: 0,
                      right: -5,

                      child: Container(
                        width: 38,
                        height: 38,

                        decoration: BoxDecoration(
                          color: Color(0xffFF5C93),
                          shape: BoxShape.circle,

                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),

                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                // Full Name
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Full Name",

                    prefixIcon: const Icon(Icons.person),

                    filled: true,
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // Email
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email Address",

                    prefixIcon: const Icon(Icons.email),

                    filled: true,
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // Password
                TextFormField(
                  obscureText: true,

                  decoration: InputDecoration(
                    hintText: "Password",

                    prefixIcon: const Icon(Icons.lock),

                    suffixIcon:
                        const Icon(Icons.visibility_off),

                    filled: true,
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // Confirm Password
                TextFormField(
                  obscureText: true,

                  decoration: InputDecoration(
                    hintText: "Confirm Password",

                    prefixIcon: const Icon(Icons.lock),

                    suffixIcon:
                        const Icon(Icons.visibility_off),

                    filled: true,
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Choose Avatar
                const Align(
                  alignment: Alignment.centerLeft,

                  child: Text(
                    "Choose your avatar",

                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // Avatar List
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,

                  children: [

                    avatarItem(
                      'assets/images/avatar1.png',
                    ),

                    avatarItem(
                      'assets/images/avatar2.png',
                    ),

                    avatarItem(
                      'assets/images/avatar3.png',
                    ),

                    avatarItem(
                      'assets/images/avatar4.png',
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                // Register Button
                SizedBox(
                  width: double.infinity,
                  height: 55,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xffFF5C93),

                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30),
                      ),
                    ),

                    onPressed: () {},

                    child: const Text(
                      "Register",

                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Login Text
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,

                  children: const [

                    Text(
                      "Already have an account? ",
                    ),

                    Text(
                      "Login",

                      style: TextStyle(
                        color: Color(0xffFF5C93),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Avatar Widget
  static Widget avatarItem(String image) {
    return Container(
      width: 60,
      height: 60,

      decoration: BoxDecoration(
        shape: BoxShape.circle,

        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
      ),

      child: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
    );
  }
}