import 'dart:math';

import 'package:flutter/material.dart';
import 'package:magicball_tp/constants.dart';
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
      title: 'Magic ball',
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
      backgroundColor: Kscaffoldcolor,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title:  const Text("Ask me any question",
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
                  leftpart= Random().nextInt(5)+1;
                });
               },
              child: Image.asset('images/ball$leftpart.png'),
              ),
              ),
            
          ],
             ),
      ),
    );
  }
}
