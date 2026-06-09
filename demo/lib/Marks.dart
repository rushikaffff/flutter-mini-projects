import 'package:flutter/material.dart';

class Marks extends StatefulWidget {
  const Marks({super.key});

  @override
  State<Marks> createState() => _MarksState();
}

class _MarksState extends State<Marks> {
  TextEditingController _sub1 = TextEditingController();
  TextEditingController _sub2 = TextEditingController();  
  TextEditingController _sub3 = TextEditingController();
  TextEditingController _sub4 = TextEditingController();
  TextEditingController _sub5 = TextEditingController();
int sum= 0;
  void sum1()
  {
    int a = int.parse(_sub1.text);
    int b= int.parse(_sub2.text);
    int c = int.parse(_sub3.text);
    int d= int.parse(_sub4.text);
    int e = int.parse(_sub5.text);
    setState(() {
      sum = a+b+c+d+e;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Marksheet"),
        backgroundColor:Colors.greenAccent,
      ),
      body:
      Column(
        children: [
          SizedBox(height: 20,),
          TextField(
            controller:_sub1,
            keyboardType:TextInputType.number,
            decoration:InputDecoration(
              labelText:"Enter sub 1 mark: ",
              border:OutlineInputBorder(),
            )
          ),
          SizedBox(height: 20,),
          TextField(
            controller:_sub2,
            keyboardType:TextInputType.number,
            decoration:InputDecoration(
              labelText:"Enter sub 2 mark: ",
              border:OutlineInputBorder(),
            )
          ),
          SizedBox(height: 10,),
          TextField(
controller:_sub3,
            keyboardType:TextInputType.number,
            decoration:InputDecoration(
              labelText:"Enter sub 3 mark: ",
              border:OutlineInputBorder(),
            )
          ),
          SizedBox(height: 10,),
          TextField(
            controller:_sub4,
            keyboardType:TextInputType.number,
            decoration:InputDecoration(
              labelText:"Enter sub 4 mark: ",
              border:OutlineInputBorder(),
            )
          ),
          SizedBox(height: 10,),
          TextField(
          controller:_sub5,
            keyboardType:TextInputType.number,
            decoration:InputDecoration(
              labelText:"Enter sub 5 mark: ",
              border:OutlineInputBorder(),
            )
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){ sum1();}, child: Text("Calculate")),
          Text("Total marks: $sum"),
          SizedBox(height: 10,),
          Text("Percent: ${sum/5}"),
        ],
      )
    );
  }
}