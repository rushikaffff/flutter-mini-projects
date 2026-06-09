import 'package:flutter/material.dart';

class EvenOdd extends StatefulWidget {
  const EvenOdd({super.key});

  @override
  State<EvenOdd> createState() => _EvenOddState();
}

class _EvenOddState extends State<EvenOdd> {

  TextEditingController c1 = TextEditingController();
  String output="";
  void check()
  {
    setState(() {
      int num = int.parse(c1.text);
    if(num % 2==0)
    {
      output="Number is even";
    }else{
      output="Number is odd";
    }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("even Odd checker"),
        backgroundColor:Colors.deepOrangeAccent,
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
                labelText:"Enter a number:",
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