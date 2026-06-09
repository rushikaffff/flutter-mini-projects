import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {

  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();

 Future<void> signup() async{
  final pref = await SharedPreferences.getInstance();
  await pref.setString("email", c1.text);
  await pref.setString("password", c2.text);
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Sign up page"),
        backgroundColor:Colors.purple,
      ),
      body:
      Column(
        children:[
          SizedBox(height:30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: c1,
              keyboardType:TextInputType.emailAddress,
              decoration:InputDecoration(
                labelText:"Enter your email:",
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                ),
              )
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(

            controller: c2,
              keyboardType:TextInputType.text,
              decoration:InputDecoration(
                labelText:"Enter your password:",
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                ),
              )
            
            ),

          ),
          ElevatedButton(onPressed:(){
            signup();
          }, child:Text("Sign up"),),
        ]
      )

    );
  }
}