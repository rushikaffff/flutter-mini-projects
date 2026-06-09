import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController c1 =  TextEditingController();
  TextEditingController c2 =  TextEditingController();
String output="";
void isvalid()
{
  setState((){
    if(c1.text == "admin" && c2.text == "1234")
    {
      output="Login Successfully";
    }else if(c1.text.isEmpty || c2.text.isEmpty){
      output="Enter Details";
    }else{
      output="Invalid data";
    }
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Login Page"),
        backgroundColor:Colors.yellow,
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
                  keyboardType:TextInputType.emailAddress,
                  decoration:InputDecoration(
                    labelText:"Enter Email",
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10),
                    )
                  )
                ),
                SizedBox(height:30,),
                TextField(
                  controller:c2,
                  obscureText: true,
                  decoration:InputDecoration(
                    labelText:"Enter Password",
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10),
                    )
                  )
                ),
              ],
            ),
           
          ),
           
          
          ElevatedButton(onPressed:(){ isvalid();},child:Text("Login"),),
          Text("$output"),
        ]
      )
    );
  }
}