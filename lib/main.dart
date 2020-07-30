import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'dart:async';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      title: "PopScope",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//to exit a app we have two option
//first is override back button
//second is using push replacement this is
//second type
  void compleated(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => nextpage()),
    );
  }


  @override
  void initState(){
  super.initState();
  Timer(Duration(seconds: 4),compleated);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:Icon(Icons.menu),
        backgroundColor:Colors.white70,
        elevation: 70.0,
        title: Text("Kreat",
        style: TextStyle(
          fontFamily: 'cursive',
          fontSize: 30.0,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Center(
        child: Text(
          "Splash \n Screen",
          style: TextStyle(
            fontSize: 50.0,
            fontFamily: 'cursive'
          ),
        ),
      ),
    );
  }
}

