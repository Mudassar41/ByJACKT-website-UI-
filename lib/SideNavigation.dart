import 'package:byjakt/Pages/Home.dart';
import 'package:byjakt/Pages/OurPartners.dart';
import 'package:byjakt/Pages/PhilosophuPage.dart';
import 'package:byjakt/Pages/WhoWeAre.dart';
import 'package:byjakt/Pages/jackMathod.dart';
import 'package:byjakt/Pages/ourApproach.dart';
import 'package:byjakt/Responsiveness/ScreenSize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Pages/ContactUs.dart';
class SideNavigation extends StatefulWidget {
  @override
  _SideNavigationState createState() => _SideNavigationState();
}

class _SideNavigationState extends State<SideNavigation> with SingleTickerProviderStateMixin {
  List<Widget> pages=[Home(),WhoWeAre(),PhilosophyPage(),OurApproach(),Jackmathod(),OurPartner(),ContactUs()];
  int _selectedindex=0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body:


   Column(
       children: [
         Align(
             alignment: Alignment.topLeft,
             child: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Text('Jakt',style: TextStyle(fontWeight: FontWeight.bold,fontSize: ScreenSize.textMultiplier*5),),
             )),
         Container(height: ScreenSize.heightMultiplier*8,color: Colors.black,child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: RichText(
textAlign: TextAlign.center,
               text: TextSpan(text:'JAKT has joined the HappyFunCorp family! ',style: TextStyle(color: Colors.white,fontWeight:  FontWeight.bold),children: [


                 TextSpan(text: ' Come visit us ',style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue)),
                 TextSpan(text: 'and get in touch.'),
               ] ),

              // child: Text('JAKT has joined the HappyFunCorp family! Come visit us and get in touch.',style: TextStyle(color: Colors.white,fontWeight:  FontWeight.bold),textAlign: TextAlign.center)

           ),
         ),),
         Expanded(
          // height: MediaQuery.of(context).size.height,
           child: Stack(
                children:[ PageView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection:Axis.vertical,
                  controller: pageController,
                  onPageChanged: onpagechanged,
                  children: pages,),

                Positioned(
               right: ScreenSize.heightMultiplier*2,
                  child: Padding(
                    padding:  EdgeInsets.only(top:ScreenSize.heightMultiplier* 8 ),
                    child: Container(
                      //color: Colors.blue,
                      width: 50,
                      height: ScreenSize.heightMultiplier*50,

                      child: ListView.builder(itemBuilder: (context,index){


                        return Padding(
                            padding: const EdgeInsets.only(right: 7,top: 35),
                        child: InkWell(
                          hoverColor: Colors.blue,
                          onTap: (){
setState(() {
  _selectedindex=index;
  print(_selectedindex);
  _onItemTapped(_selectedindex);
});
}, child: Container(
                            height:_selectedindex == index? ScreenSize.heightMultiplier +6:ScreenSize.heightMultiplier+3,
                            width: ScreenSize.heightMultiplier + 7,
                            decoration: BoxDecoration(

                                shape: BoxShape.circle,
                                // set border width
border: Border.all(width:2,color: Colors.white),
                            ),


                            child: Container(height:_selectedindex == index? ScreenSize.heightMultiplier +4:ScreenSize.heightMultiplier,
                       width: ScreenSize.heightMultiplier + 4,
                            decoration: BoxDecoration(

                                shape: BoxShape.circle,
                                 // set border width

//border: Border.all(width:5 ,color: Colors.white),

                          color: _selectedindex == index ? Colors.black : Colors.black54
                            ),),
                          ),
                        ));
                      },itemCount: pages.length,),
                    ),
                  ),
                ),
                ]
              ),
         ),
       ],
   ),
      ),
    );
  }





  void _onItemTapped(int index) {
    pageController.jumpToPage(index);

  }
  void onpagechanged(int index){
setState(() {
  _selectedindex=index;
});

  }
}
