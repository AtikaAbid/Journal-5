import 'package:flutter/material.dart';

class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("HOBBIES")),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                text:"Hobbies: \n",
                style: TextStyle(fontSize: 20,color:const Color.fromARGB(255, 84, 4, 4)),
                children: [
                  TextSpan(
                    text:"I love, ",
                    style: TextStyle(fontSize: 20,color:const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  TextSpan(
                    text:"coding, reading, and traveling, ",
                    style: TextStyle(fontSize: 20,color:const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  TextSpan(
                    text:"in my free time.",
                    style: TextStyle(fontSize: 20,color:const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed:(){
              Navigator.pop(context);
            },
            child:Text("Back to Education")
             )
          ],

        )
      )
    ); 
  }
}