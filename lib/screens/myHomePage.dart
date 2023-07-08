import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_regex/globals/textFiled.dart';
import 'package:login_regex/globals/buttons.dart';
import 'package:login_regex/screens/second.dart';

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => HomeState();
}

class HomeState extends State<MyHomePage>{

  final formKey = GlobalKey<FormState>();
  TextEditingController fname = TextEditingController();
  TextEditingController sname = TextEditingController();
  bool textErrorE = false;
  bool textErrorP = false;
  bool passVisible = false;
  @override
  void initState(){
    fname.text = "";
    sname.text = "";
    super.initState();
    passVisible = true;
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text("form validation"),
          ),
          body: Container(
            padding: EdgeInsets.all(8),
            child: Form(
              key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                           TextField(
                             controller: fname,
                              decoration: InputDecoration(
                                hintText: "Enter phone number",
                                errorText: textErrorE?"Enter currect phone number":null,
                                filled: false,
                                suffixIcon: Icon(Icons.phone),

                              ),
                             keyboardType: TextInputType.number,

                           ),

                          TextField(
                            controller: sname,
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              errorText: textErrorP?"Enter correct passWord":null,
                              filled: true,
                              suffixIcon: IconButton(
                                icon: Icon(passVisible? Icons.visibility : Icons.visibility_off),
                                onPressed: (){
                                  setState(() {
                                     passVisible = !passVisible;
                                  });
                                },
                              ),
                            ),
                            obscureText: passVisible,
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //phone number regex check
                              if (fname.text.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(fname.text)  ) {
                                setState(() {
                                  textErrorE  = true;
                                });
                              }
                              //password regex check
                              if(sname.text.isEmpty || !RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$").hasMatch(sname.text)) {
                                setState(() {
                                  textErrorP  = true;
                                });
                              }
                              else{
                                setState(() {
                                  textErrorP = false;
                                  textErrorE = false;
                                  //navigate another page
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  SecHomePage()),
                                  );
                                });
                              }
                            },
                            child: Text("Login") ,
                          ),
                  ],
                ),
            ),
          ),
      );
  }
}
