import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShowEmail extends StatefulWidget {
  @override
  ShowEmailState createState(){
    return ShowEmailState();
  }
}

class ShowEmailState extends State<ShowEmail> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar : AppBar(
      backgroundColor:  Colors.red ,
      actions: <Widget>[
        IconButton(
          icon : Icon(Icons.delete) ,
          onPressed: (){ print("delete");},
        ) ,
        IconButton(
          icon : Icon(Icons.email) ,
          onPressed: () { print("email");} ,
          ) ,
          IconButton(
            icon : Icon(Icons.more_vert) ,
            onPressed: () { print("more");},
          )
      ],
    ) 
  );
  }
  
}