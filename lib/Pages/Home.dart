import 'package:byjakt/Responsiveness/ScreenSize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> txt=['J','A','K','T'];
  @override
  Widget build(BuildContext context) {
    
    
    return  Row(

      children: [
        Container(
          height: ScreenSize.heightMultiplier*50,
          child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: txt.map((e) => Padding(
              padding:  EdgeInsets.only(top: ScreenSize.heightMultiplier*3,left: 10),
              child: Text(e,style: TextStyle(fontWeight: FontWeight.bold),),
            )).toList()
          ),
        ),Flexible(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10),
              child: Text('Digital Product & Innovation Studio',style: TextStyle(fontSize: ScreenSize.textMultiplier*3,fontWeight: FontWeight.bold, ),textAlign: TextAlign.center,),
            ),
            Padding(
              padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10,top: 20),
              child: Text('work with us',style: TextStyle(  decoration: TextDecoration.underline,fontSize: ScreenSize.textMultiplier*2.8,fontWeight: FontWeight.normal, color: Colors.black),textAlign: TextAlign.center,),
            ),
          ],
        ),)
      ],

    );
  }
}
