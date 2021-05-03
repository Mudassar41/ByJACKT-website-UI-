import 'package:byjakt/Responsiveness/ScreenSize.dart';
import 'package:flutter/material.dart';
class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(



        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          Padding(
            padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10,top:ScreenSize.textMultiplier*10),
            child: Text('Want To Work With Us?',style: TextStyle(fontSize: ScreenSize.textMultiplier*3,fontWeight: FontWeight.bold, ),textAlign: TextAlign.center,),
          ),

            Padding(
              padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10,top:ScreenSize.textMultiplier ),
              child: Text('Connect with our team regarding an upcoming project or transformation need.',style: TextStyle(fontSize: ScreenSize.textMultiplier+8,fontWeight: FontWeight.normal, ),textAlign: TextAlign.center,),
            ),
   Padding(
     padding:  EdgeInsets.only(left: ScreenSize.textMultiplier*5,right: ScreenSize.textMultiplier*10,top:ScreenSize.textMultiplier),
       child: Form(
       key: _formKey,
       child: Column(children: [

       TextFormField(
           decoration: InputDecoration(
               labelText: 'Name'
           ),
         validator: (value) {
           if (value.isEmpty) {
             return 'Please enter some text';
           }
           return null;
         },
       ),
       TextFormField(
           decoration: InputDecoration(
               labelText: 'Company'
           ),
         validator: (value) {
           if (value.isEmpty) {
             return 'Please enter some text';
           }
           return null;
         },
       ),
       TextFormField(
           decoration: InputDecoration(
               labelText: 'Phone Number'
           ),
       ),
       TextFormField(
           decoration: InputDecoration(
               labelText: 'Email Address'
           ),
         validator: (value) {
           if (value.isEmpty) {
             return 'Please enter some text';
           }
           return null;
         },
       ),
     ],),),
   ),
      RaisedButton(
        color: Colors.black,
        onPressed: () {
          // Validate returns true if the form is valid, otherwise false.
          if (_formKey.currentState.validate()) {
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.


          }
        },
        child: Text('Get In Touch',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      )
        ],),


    );
  }
}
