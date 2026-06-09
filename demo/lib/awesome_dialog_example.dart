import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class AwesomeDialogExample extends StatelessWidget {
  const AwesomeDialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome Dialog"),
      ),

      body: Center(
        child: ElevatedButton(

          onPressed: () {

            AwesomeDialog(
              context: context,

              dialogType: DialogType.success,

              animType: AnimType.scale,

              title: 'Success',

              desc: 'Your dialog is working perfectly!',

              btnOkOnPress: () {},

            ).show();

          },

          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}