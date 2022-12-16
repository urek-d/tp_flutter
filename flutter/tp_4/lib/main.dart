import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:im_animations/im_animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jeu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftpart=1;
  int rightpart=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title:  const Text("Dicee",
         style: TextStyle(
          color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'courgette',

         ),
         ),
      ),
      body:Center(
        child:Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child:ElevatedButton(
              onPressed: () { 
                setState(() {
                  leftpart= Random().nextInt(6)+1;
                });
               },
              child: Image.asset('images/dice$leftpart.png'),
              ),
              ),
            Expanded(
              child:ElevatedButton(
              onPressed: () { 
                setState(() {
                  rightpart= Random().nextInt(6)+1;
                });
               },
              child: Image.asset('images/dice$rightpart.png'),
              ),
              ),
          ],
             ),
      ),
    );
  }
}
