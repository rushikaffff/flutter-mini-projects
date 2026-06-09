import 'package:flutter/material.dart';

class Rou extends StatefulWidget {
  const Rou({super.key});

  @override
  State<Rou> createState() => _RouState();
}

class _RouState extends State<Rou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
        backgroundColor: Colors.amber,
      ),
      body:
      Column(
        children: [
          Text("Navigation using Routes"),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/');
          }, child: Text("Main Screen")),
           ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/calls');
          }, child: Text("Calls")),
           ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/services');
          }, child: Text("Services")),
        ],
      )
    );
  }
}