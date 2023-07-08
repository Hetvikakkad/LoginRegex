import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => OutputClass();
}
class OutputClass extends State<SecHomePage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("secHomePage"),
     ),
     body: Container(
       child: Text("success "),
     ),
   );
  }

}
