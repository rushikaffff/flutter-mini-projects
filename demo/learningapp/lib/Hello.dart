import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Basic"),
        backgroundColor:Colors.purple,
      ),
      body:
      SingleChildScrollView(
       child:
      Column(
        children: [
          Text("Hello World", style:TextStyle(fontSize: 30, color: Colors.blue,fontFamily: "Arial", fontWeight: FontWeight.w100, )),
SizedBox(),
          Center(
            child: Container(
              height: 100,
              width: 100,
              
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/image.jpg"),  )),
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              
            ),
          ),
          Icon(Icons.home,color: Colors.white,),
SizedBox(),
          Image(image: AssetImage("assets/image.jpg")),
          Placeholder(),
          Divider(height: 10, )
        ],
      )),
    );
  }
}