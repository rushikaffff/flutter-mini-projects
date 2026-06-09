import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
String error ="";
  Future<void> login() async {
    final pref = await SharedPreferences.getInstance();

    String? email = pref.getString("email");
    String? password = pref.getString("password");

    if (c1.text == email && c2.text == password) {
      await pref.setBool("isLogin", true);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Homepage(),
        ),
      );
    } else {
      setState((){
error="Invalid data";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(height: 30),

            TextField(
              controller: c1,
              decoration: InputDecoration(
                labelText: "Enter Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: c2,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Enter Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: login,
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}