import 'package:flutter/material.dart';
import 'package:new_application/screens/screen1.dart';      
import 'package:new_application/screens/screen2.dart';    
import 'package:new_application/screens/screen3.dart';    

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Introduction"),
              Tab(text: "Education"),
              Tab(text: "Hobbies"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            IntroScreen(),      
            EducationScreen(), 
            HobbiesScreen(),  
          ],
        ),
      ),
    );
  }
}