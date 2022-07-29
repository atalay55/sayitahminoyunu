import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayitahminoyunu/GamePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sayi tahmin oyunu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'guess'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  var numberCont=TextEditingController();
  var num; var result=" ";
  Random random=Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SizedBox(
                height: 220,
                width: 220,
                child: Image.asset("Image/login.jpg")),
            SizedBox(
              height: 60,
              width: 85,
              child: Padding(
                padding:  EdgeInsets.only(top: 25.0),
                child: ElevatedButton(
                    onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GamePage()));
                }, child: Text("Play",style: TextStyle(fontSize: 12),),

                ),
              ),
            )
            ]
      ),
      )
    );
  }
}

