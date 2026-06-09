import 'package:flutter/material.dart';

class Pass extends StatefulWidget {
  const Pass({super.key});

  @override
  State<Pass> createState() => _PassState();
}

class _PassState extends State<Pass> {

  TextEditingController c1 = TextEditingController();
  String output="";
  void check()
  {
    setState(() {
     
    if(c1.text.length<6)
    {
      output="Weak";
    
    }else if(c1.text.length>6 && c1.text.length <10){
      output="Medium";
    }else if(c1.text.length>=10){
      output="Strong";
    }else{
      output="Enter pass";
    }
  });}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Password checker"),
        backgroundColor:Color.fromARGB(255, 64, 201, 255),
      ),
      body:
      Column(
        children:[
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller :c1,
              keyboardType:TextInputType.number,
              decoration:InputDecoration(
                labelText:"Enter your Password:",
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                ),

              )

            ),
            
          ),
           ElevatedButton(onPressed:(){ check();},child:Text("Click"),),
           Text("$output"),
        ]
      )
    );
  }
}