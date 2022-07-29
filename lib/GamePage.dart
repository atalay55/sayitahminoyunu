import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayitahminoyunu/ResultPage.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  var hak=5;
  var message="let's start";
  var result;
  var numberCont=TextEditingController();
  var num;
  @override
  void initState() {
    Random random=Random();
    num=random.nextInt(11);
    result=" ";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Resul Page"),
    ),
    body:Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("kalan hakkınız :$hak",style: TextStyle(fontSize: 25,color: Colors.red),),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("$message",style:TextStyle(fontSize: 15,color:Colors.blueGrey)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                 controller: numberCont,
                keyboardType:TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Tahminizi yazınız"),
                ),
              ),
            ),

            ElevatedButton(
                onPressed:(){
                  var glnSayi=int.parse(numberCont.text);
                  print(num);

                  setState(() {
                    hak-=1;

                  });
                  if( glnSayi.isNegative || glnSayi>10 ){
                    result="0-10 arasinda bir sayi giriniz";
                    return;}
                  if(hak<=0){
                    Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>ResultPage(result:"oyun bitti üzgünüz",resimPath: "Image/failed.png", )),(route)=>false);
                  }

                  if(glnSayi==num) {
                    Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>ResultPage(result:"Tebrikler Bildiniz",resimPath: "Image/smile.png", )),(route) => false);
                  }
                  if(glnSayi<num){
                    setState(() {
                      result="sayinizi yükseltin";
                    });

                  }
                  if(glnSayi>num){
                    setState(() {
                      result="sayinizi azalttın";
                    });
                  }

                },

                child: Text("let's Try")),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("$result",style:TextStyle(fontSize: 20,color:Colors.black45)),
            ),


          ],
        ),
      ),
    )
    );
  }
}
