import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
   TextEditingController c3 = TextEditingController();
   int c=0;
void Calc(){
 setState(() {
    int a = int.parse(c1.text);
  int b = int.parse(c3.text);
  
  if(c2.text == "+")
  {
    c=a+b;
  }else if(c2.text == "-"){
    c=a-b;

  }
  else if(c2.text == "*"){
    c=a*b;
  }
  else if(c2.text == "/"){
    c=a~/b;
  }
 });
}

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar:AppBar(
        title:Text("Calcuator"),
        backgroundColor:Colors.brown,
      ),
      body:Column(
        children:[
          SizedBox(height:30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:c1,
              keyboardType:TextInputType.number,
              decoration:InputDecoration(
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height:30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:c2,
              keyboardType:TextInputType.text,
              decoration:InputDecoration(
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                ),
              ),
            ),
          ),
           SizedBox(height:30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:c3,
              keyboardType:TextInputType.number,
              decoration:InputDecoration(
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed:(){
            Calc();
          },child: Text("Calculate") ,),
          Text("Result : $c"),

        ]

      )
    );
  }
}