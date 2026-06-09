import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class SnackbarExample extends StatelessWidget {
  const SnackbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar Example"),
      ),

      body: Center(
        child: ElevatedButton(

          onPressed: () {

            ScaffoldMessenger.of(context).showSnackBar(

              SnackBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                behavior: SnackBarBehavior.floating,

                content: AwesomeSnackbarContent(
                  title: 'Success!',
                  message: 'Snackbar is working properly',

                  contentType: ContentType.success,
                ),
              ),
            );
          },

          child: const Text("Show Snackbar"),
        ),
      ),
    );
  }
}