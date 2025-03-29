import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(LudoApp());
}
class LudoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ludo(),
    );
  }
}

class Ludo extends StatefulWidget{
  const Ludo({super.key});

  @override
  State<Ludo> createState() => _LudoState();

}
class _LudoState extends State<Ludo> {
  String filename ='assets/dice_1.png';
  void randomnumber()
  {
    int random = Random().nextInt(5)+1;
    if(random==1)
    {
      setState((){
        filename="assets/dice_1.png";

      });
    }
    else if(random==2)
    {
      setState((){
        filename="assets/dice_2.png";

      });
    }
    else if(random==3)
    {
      setState((){
        filename="assets/dice_3.png";

      });
    }
    else if(random==4)
    {
      setState((){
        filename="assets/dice_4.png";

      });
    }
    else if(random==5)
    {
      setState((){
        filename="assets/dice_5.png";

      });
    }
    else if(random==6)
    {
      setState((){
        filename="assets/dice_6.png";

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Ludo Game"),
        backgroundColor: const Color.fromARGB(255, 170, 13, 2),
      ),
      body: Center(
        child:Column(
          children:[
            Padding(padding:EdgeInsets.all(20)),
            Image.asset(filename,height:100,width:100),
            SizedBox(height:50),
            ElevatedButton(onPressed: (){randomnumber();},child:Text('Roll Dice',style:TextStyle(color:Colors.orangeAccent),)),
            SizedBox(height:50),
          ],
        ),
      ),
    );
  }
}
