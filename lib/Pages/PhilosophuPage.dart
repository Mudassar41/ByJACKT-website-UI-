import 'package:byjakt/Responsiveness/ScreenSize.dart';
import 'package:flutter/material.dart';
class PhilosophyPage extends StatefulWidget {
  @override
  _PhilosophyPageState createState() => _PhilosophyPageState();
}

class _PhilosophyPageState extends State<PhilosophyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
color: Colors.white,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


          Padding(
            padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10,top:ScreenSize.textMultiplier*5 ),
            child: Text('Our Philosophy',style: TextStyle(fontSize: ScreenSize.textMultiplier*4,fontWeight: FontWeight.bold, ),textAlign: TextAlign.center,),
          ),
            Padding(
              padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10,top:ScreenSize.textMultiplier ),
              child: Text('Our philosophy is simple. We are committed to creating innovative solutions with any business, brand or individual looking to make an impact. We’ve been refining our process since 2012. With each new project we bring everything we’ve learned to the table while gaining new insight that may better our process even more for the future. We treat our process like a product: we’re constantly innovating on it using the same framework and methods we use to build digital products and businesses.',style: TextStyle(fontWeight: FontWeight.normal, wordSpacing: 2,fontSize: ScreenSize.imageSizeMultiplier+8),textAlign: TextAlign.left,),
            ),
            Padding(
              padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10,top:ScreenSize.textMultiplier*2 ),
              child: Row(
                children: [
              Container(width: 5,color: Colors.black,height: ScreenSize.heightMultiplier*15,),
                  Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('When you partner with Jakt, you get the benefit of years of work and hundreds of projects which have all contributed to the creation and refinement of the our approach & methodology.',style: TextStyle(fontWeight: FontWeight.bold, wordSpacing: 2,fontSize: ScreenSize.imageSizeMultiplier+8),textAlign: TextAlign.left,),
                      )),
                ],
              ),
            ),



        ],),


    );
  }
}
