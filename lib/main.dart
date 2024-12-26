
import 'dart:io';
import "screenutils.dart";

import 'package:flutter/material.dart';
void main(){


  runApp( const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

     final screenUtils = ScreenUtils(context);
   return MaterialApp(
    theme: ThemeData(
        // scaffoldBackgroundColor: N, // Set scaffold background color here
        // primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity
        ),
      
      
        debugShowCheckedModeBanner: false,
        

        home: Scaffold(appBar: AppBar(
          title: const Text(''),
        ),
        

        body: Container(

           
          padding: EdgeInsets.symmetric(
            horizontal: screenUtils.defaultWidth,
          ),
          child: Column(


            children: [],
          ),
        ),
                ),
        );

  }
}
