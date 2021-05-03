import 'package:byjakt/Responsiveness/ScreenSize.dart';
import 'package:flutter/material.dart';
class OurPartner extends StatefulWidget {
  @override
  _OurPartnerState createState() => _OurPartnerState();
}

class _OurPartnerState extends State<OurPartner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF121214),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text('Our Partners',style: TextStyle(fontSize: ScreenSize.textMultiplier*4,fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.center,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            Container(
              width:ScreenSize.imageSizeMultiplier*25 ,
                height: ScreenSize.imageSizeMultiplier*8,
                child: Image.asset('assets/one.JPG',fit:BoxFit.cover ,)),
            Container(
                width:ScreenSize.imageSizeMultiplier*25 ,
                height: ScreenSize.imageSizeMultiplier*8,
                child: Image.asset('assets/scnd.JPG',fit:BoxFit.cover))
            , Container(
                  width:ScreenSize.imageSizeMultiplier*25 ,
                  height: ScreenSize.imageSizeMultiplier*8,
                  child: Image.asset('assets/third.JPG',fit:BoxFit.cover))
            , Container(
                  width:ScreenSize.imageSizeMultiplier*25 ,
                  height: ScreenSize.imageSizeMultiplier*8,
                  child: Image.asset('assets/four.JPG',fit:BoxFit.cover))

          ],),       Text('Show More',style: TextStyle(fontSize: ScreenSize.textMultiplier*3,fontWeight: FontWeight.bold, color: Colors.white,decoration: TextDecoration.underline),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
