import 'package:flutter/material.dart';


class Largest extends StatefulWidget {
  const Largest({super.key});

  @override
  State<Largest> createState() => _LargestState();
}

class _LargestState extends State<Largest> {
  TextEditingController c1 =  TextEditingController();
  TextEditingController c2 =  TextEditingController();
  TextEditingController c3 =  TextEditingController();

String output="";
void isvalid()
{
  int a = int.parse(c1.text);
  int b = int.parse(c2.text);
  int c = int.parse(c3.text);
  if(a>b && b>c)
  {
    output= "Num 1 is larger";
  }
  else if( b>c )
  {
    output="Num 2 is larger";
  }else{
    output="Num 3 is larger";
  }

 
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Largest Number"),
        backgroundColor:Color.fromARGB(255, 231, 15, 202),
      ),
      body:
      Column(
        children:[
          SizedBox(height:30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller:c1,
                  keyboardType:TextInputType.number,
                  decoration:InputDecoration(
                    labelText:"Enter num 1",
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10),
                    )
                  )
                ),
                SizedBox(height:30,),
                TextField(
                  controller:c2,
                 
                   keyboardType:TextInputType.number,
                  decoration:InputDecoration(
                    labelText:"Enter Num 2",
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10),
                    )
                  )
                ),
                SizedBox(height:30,),
                TextField(
                  controller:c3,
                   keyboardType:TextInputType.number,
                 
                  decoration:InputDecoration(
                    labelText:"Enter Num 3",
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10),
                    )
                  )
                ),
              ],
            ),
           
          ),
           
          
          ElevatedButton(onPressed:(){ isvalid();},child:Text("Largest"),),
          Text("$output"),
        ]
      )
    );
  }
}