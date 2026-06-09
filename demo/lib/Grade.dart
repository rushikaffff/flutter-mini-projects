import 'package:flutter/material.dart';

class Grade extends StatefulWidget {
  const Grade({super.key});

  @override
  State<Grade> createState() => _GradeState();
}

class _GradeState extends State<Grade> {
  TextEditingController _num = TextEditingController();
  String grade = "";
  void marks()
  {
    int a = int.parse(_num.text);
    
    setState((){
if(a>90)
    {
      grade = "A+";
    }
    else if(a>80)
    {
      grade= "A";
    }
    else if(a>70)
    {
      grade = "B+";
    }
    else if(a>60)
    {
      grade = "B";
    }
    else if(a>50)
    {
      grade = "C+";
    }
    else if(a>40)
    {
      grade = "C";
    }
    else
    {
      grade = "Fail";
    }
  });
    }
    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Student Grade Checker"),
        backgroundColor:Colors.pink,
      ),
      body:
     
      Column(
        
        children:[
          SizedBox(height:20,),
          
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
             controller :_num,
              keyboardType:TextInputType.number,
              decoration:InputDecoration(
                labelText:"Enter your marks",
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                ),
              ),
            
            ),
            
          ),
          ElevatedButton(
            onPressed:(){ marks(); },
            child:Text("Calculate"),

          ),
          Text("Your grade is: $grade"),
        ]

      )
    );
  }
}