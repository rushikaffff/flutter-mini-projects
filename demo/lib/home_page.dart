import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  Future<void> logout(BuildContext context) async {
    final pref = await SharedPreferences.getInstance();

    await pref.setBool("isLogin", false);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Loginpage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => logout(context),
          child: const Text("Logout"),
        ),
      ),
    );
  }
}