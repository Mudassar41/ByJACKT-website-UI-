
import 'package:byjakt/Responsiveness/ScreenSize.dart';
import 'package:flutter/material.dart';
class Jackmathod extends StatefulWidget {
  @override
  _JackmathodState createState() => _JackmathodState();
}

class _JackmathodState extends State<Jackmathod> {
  @override
  Widget build(BuildContext context) {
    return Container(




      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10,top:ScreenSize.textMultiplier ),
            child: Text('The Jakt Method',style: TextStyle(fontSize: ScreenSize.textMultiplier*4,fontWeight: FontWeight.bold, ),textAlign: TextAlign.left,),
          ),
          Padding(
            padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10,top:ScreenSize.textMultiplier*5 ),
            child: Text('First and foremost, we seek clarity. What is the problem? Why is it a problem? Why do you want to solve it? What are your short term and long term goals? From there, we ask ourselves how we can combine business strategy, product strategy, design, technology and marketing to help you achieve them. With a clear understanding of the goals and values behind a project, we can implement mindful strategies and produce the solutions and products necessary to increase the odds of success.',style: TextStyle(fontSize: ScreenSize.textMultiplier+8,fontWeight: FontWeight.normal,),textAlign: TextAlign.left,),
          ),


          Padding(
            padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10,top:ScreenSize.textMultiplier ),
            child: Text('At Jakt, we are a collective of minds collaborating every day to produce the best possible work for our partners. As a partner you become part of the process, using your skills and expertise in collaboration with ours to solve problems, create products and build companies together.',style: TextStyle(fontSize: ScreenSize.textMultiplier+8,fontWeight: FontWeight.normal,),textAlign: TextAlign.left,),
          ),



        ],),

    );
  }
}
