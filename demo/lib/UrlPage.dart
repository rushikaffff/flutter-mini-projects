import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlPage extends StatelessWidget {
  UrlPage({super.key});

  final Uri phone = Uri.parse("tel:9429312810");

  Future<void> openPhone() async {
    if (!await launchUrl(phone)) {
      throw Exception("Could not launch");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("URL Launcher"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: openPhone,
          child: Text("Open Phone"),
        ),
      ),
    );
  }
}