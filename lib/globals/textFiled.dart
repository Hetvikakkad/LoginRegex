import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextShow extends StatelessWidget{
 final String label;
 CustomTextShow({Key? key, required this.label}) : super(key: key);

 @override

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration (
        hintText: label,
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
          filled: false,
          suffixIcon: const Icon(Icons.phone_android),
      ),
    );
  }
}

class CustomTextHide extends StatelessWidget{
  final String label;
  CustomTextHide({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: label,
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        filled: true,
        suffixIcon: const Icon(Icons.circle_sharp),
      )
    );
  }
}
