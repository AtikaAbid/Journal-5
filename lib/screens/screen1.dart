import 'package:flutter/material.dart';
import 'package:new_application/screens/screen2.dart'; 

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("INTRODUCTION")),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                text:"Hello! I'm ",
                style: TextStyle(fontSize: 20,color:const Color.fromARGB(255, 0, 0, 0)),
                children: [
                  TextSpan(
                    text:"Atika Abid.",
                    style: TextStyle(fontWeight: FontWeight.bold,color:const Color.fromARGB(255, 11, 29, 78)),
                  ),
                  TextSpan(
                    text:"I'm a Computer science student, a passionate Mobile Application Developer.",
                    style: TextStyle(fontSize: 20,color:const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed:(){
              Navigator.push(context,
               MaterialPageRoute(builder: (context)=> EducationScreen()),
              );
            },
            child:Text("My Eduation")
             )
          ],

        )
      )
    ); 
  }
}