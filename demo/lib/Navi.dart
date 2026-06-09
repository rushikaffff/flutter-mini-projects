import 'package:demo/Calls.dart';
import 'package:demo/Login.dart';
import 'package:demo/Services.dart';
import 'package:flutter/material.dart';

class Navi extends StatefulWidget {
  const Navi({super.key});

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Main screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Navigation using method Navigators"),
             ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
             }, child: Text("Login")),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Calls()));
            }, child: Text("Calls")),
             ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Services()));
             }, child: Text("Services")),

          ],
        ),
      )

    );
  }
}