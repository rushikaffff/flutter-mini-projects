import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Exampletoast extends StatelessWidget {
  const Exampletoast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Toast Example"),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

                Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: const Color.fromARGB(255, 54, 222, 244),
                  textColor: Colors.white,
                  fontSize: 16.0,
                );

              },

              child: Text("Show Toast"),
            ),
          ],
        ),
      ),
    );
  }
}