import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {

  String selectedItem="samsun";
  var cities=<String>[];
  @override
  void initState() {
      cities.add("samsun");
      cities.add("ankara");
      cities.add("konya");
      cities.add("izmir");


  }
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedItem,
      items: cities.map<DropdownMenuItem<String>>((String value){
          return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
          );
    }).toList(),
      onChanged: (String? newValue){
        setState(() {
          selectedItem=newValue!;
        });
      },
    );
  }
}






