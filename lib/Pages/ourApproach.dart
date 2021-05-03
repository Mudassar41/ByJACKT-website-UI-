import 'package:byjakt/Responsiveness/ScreenSize.dart';
import 'package:flutter/material.dart';
class OurApproach extends StatefulWidget {
  @override
  _OurApproachState createState() => _OurApproachState();
}

class _OurApproachState extends State<OurApproach> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding:  EdgeInsets.only(right:ScreenSize.textMultiplier*8,bottom:ScreenSize.textMultiplier*5),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.white,width: 5),
          ),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Our Approach",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: ScreenSize.textMultiplier*3),),
                ),
                SizedBox(height: 10,),
                //  Text('${ScreenSize.textMultiplier+8}',style: TextStyle(color: Colors.white),),
                Text("Building the best product requires first understanding the problem. This is the foundation of everything we do. Only then can we identify the best solution to that problem, which is both a solution that customers love and is viable from a business standpoint.Pixel perfect designs, mobile apps, websites. These aren’t solutions, these are tools, just like countless other things in our toolbox like blockchain, voice apps, artificial intelligence, graphic design, facebook ads, etc.Our toolbox is extensive, diverse, and constantly growing; but tools are only valuable if you know which to use and how to use them."
                  ,style: TextStyle(color: Colors.white,fontSize: ScreenSize.imageSizeMultiplier+8),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
