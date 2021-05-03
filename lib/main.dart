import 'package:byjakt/Responsiveness/ScreenSize.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Pages/Home.dart';
import 'Pages/WhoWeAre.dart';
import 'SideNavigation.dart';

void main() => runApp(
    MyHomePage()
);


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
      return LayoutBuilder(
      builder: (context, constraints) {
        //  print(MediaQuery.of(context).size.height);
        return OrientationBuilder(
          builder: (context, orientation) {
            ScreenSize().init(constraints, orientation);
            return MaterialApp(
             // theme: ThemeData(primaryColor: color.Blue ,),
              debugShowCheckedModeBanner: false,
              title: 'Learning Platform Application',

              home:SideNavigation()

              //authProvider.getCurrentUser()!=null?BottomNavigation():AuthenticatioPage()

            );
          },
        );
      },
    );
  }
}

