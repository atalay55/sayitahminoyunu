import 'package:flutter/material.dart';
import 'package:sayitahminoyunu/GamePage.dart';

class ResultPage extends StatefulWidget {
  var result;
  var resimPath;

  ResultPage({required this.result,required this.resimPath});
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resul Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(widget.resimPath)),
            Padding(
              padding:  EdgeInsets.only(top: 18.0,bottom: 15.0,),
              child: Text(
                "${widget.result}",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
            ),ElevatedButton(onPressed: (){
              setState(() {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>GamePage()), (route) => false);
              });
            }, child: Text("Play Again"))
          ],
        ),
      ),
    );
  }
}
