import 'package:flutter/material.dart';
import 'package:new_application/screens/screen3.dart'; 

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("EDUCATION")),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                text:"Education \n",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:const Color.fromARGB(255, 84, 4, 4)),
                children: [
                  TextSpan(
                    text:"I am pursuing,",
                    style: TextStyle(fontSize: 20,color:const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  TextSpan(
                    text:"BS Computer Science",
                    style: TextStyle(fontSize: 20,color:const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  TextSpan(
                    text:"at Bahria University.",
                    style: TextStyle(fontSize: 20,color:const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed:(){
              Navigator.push(context,
               MaterialPageRoute(builder: (context)=> HobbiesScreen()),
              );
            },
            child:Text("My Hobbies")
             ),
             SizedBox(height: 20),
            ElevatedButton(onPressed:(){
              Navigator.pop(context);
            },
            child:Text("Back to Introduction")
             )
          ],

        )
      )
    ); 
  }
}