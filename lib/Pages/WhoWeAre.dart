import 'package:byjakt/Responsiveness/ScreenSize.dart';
import 'package:flutter/material.dart';
class WhoWeAre extends StatefulWidget {
  @override
  _WhoWeAreState createState() => _WhoWeAreState();
}

class _WhoWeAreState extends State<WhoWeAre> {
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.black,


      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        Padding(
          padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10,top:ScreenSize.textMultiplier*5 ),
          child: Text('Who We Are',style: TextStyle(fontSize: ScreenSize.textMultiplier*4,fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.left,),
        ),
          Padding(
            padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10,top:ScreenSize.textMultiplier*5 ),
            child: Text('Jakt is a digital product & innovation studio. We partner with companies of all sizes, from startups to enterprises, to create bespoke digital products that solve problems. How do we do this? Through a mix of product strategy, business strategy, design, software development and marketing. We aim to positively impact the lives of 100 million people through solutions we’ve created by 2027.',style: TextStyle(fontSize: ScreenSize.textMultiplier+8,fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.left,),
          ),


          Padding(
            padding:  EdgeInsets.only(right: ScreenSize.heightMultiplier*15,left: ScreenSize.heightMultiplier*10,top: ScreenSize.heightMultiplier*5),
            child: Container(height: ScreenSize.heightMultiplier,color: Colors.white,),
          )



      ],),

    );
  }
}
