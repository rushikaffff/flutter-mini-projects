import 'package:flutter/material.dart';

class Age extends StatefulWidget {
  const Age({super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {

  TextEditingController c1 = TextEditingController();
  String output="";
  void check()
  {
    setState(() {
      int num = int.parse(c1.text);
    if(num<18)
    {
      output="Not Eligible";
    }else if(num>=18){
      output="Voting eligible";
    }else if(num>=21){
      output="driving eligible";
    }else{
      output="Senior citizen";
    }
  });}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Age checker"),
        backgroundColor:Color.fromARGB(255, 48, 32, 119),
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
                labelText:"Enter your age:",
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