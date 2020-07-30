import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class nextpage extends StatefulWidget {
  @override
  _nextpageState createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {

  DateTime current;

  Future <bool> popped(){
    DateTime now = DateTime.now();
    if (current == null || now.difference(current) > Duration(seconds: 2)){
      current=now;
      Fluttertoast.showToast(msg: "Press back Again To Exit !",
      toastLength: Toast.LENGTH_SHORT
      );

      return Future.value(false);
    }else{
      Fluttertoast.cancel();
      return Future.value(true);
    }

  }


  @override
  Widget build(BuildContext context) {
    //to override back button to exit as
    //soon as you click back button
    //use willpopscope
    return WillPopScope(
      //this will show value in debugprint after hitting debug button
      //onwillpop
     onWillPop: () => popped(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text("Next \n Screen",
            style: TextStyle(
                color: Colors.black,
                fontSize: 50.0,
                fontFamily: 'Times New Roman'
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}


//to create a dialogue box you can use following coad
//return showDialog(
//context: context,
//builder: (context) => AlertDialog(
//title: Text("Warning"),
//content: Text("Are You Sure To Exit ?",
//),
//actions: <Widget>[
//FlatButton(
//onPressed: (){
//Navigator.of(context).pop(true);
//
//}, child: Text(
//'Yes',style: TextStyle(
//color: Colors.black
//),
//)),
//FlatButton(
//onPressed: (){
//Navigator.of(context).pop(true);
//}, child: Text(
//'No',
//))
//],
//)
//
//);