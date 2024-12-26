
import 'dart:io';
import 'screenutils/screenutils.dart';

import 'package:flutter/material.dart';
void main(){


  runApp( const MyApp());
}


class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 int _selectedIndex=0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

   
   return MaterialApp(
    theme: ThemeData(
        // scaffoldBackgroundColor: N, // Set scaffold background color here
        // primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity
        ),
      
      
        debugShowCheckedModeBanner: false,
        

        home: Scaffold(
          
        //   appBar: AppBar(
        //   title: const Text(''),
        // ),
        

        body: const Body(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(15, 17, 21, 1
),
          type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/app/card.png",
              width: 24,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset(
              "assets/app/bonfire.png",
              width: 24,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset(
              "assets/app/chat.png",
              width: 24,
              height: 24,
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon:  Image.asset(
              "assets/app/user.png",
              width: 24,
              height: 24,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex, // Highlight the selected tab
        // selectedItemColor: Colors.blue, // Color of the selected tab
        onTap: _onItemTapped, // Handle tab selection
      ),
                ),
        );

  }
}


class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {

      final screenUtils = ScreenUtils(context);
    return Container(
  padding: EdgeInsets.symmetric(
            horizontal: screenUtils.defaultWidth,
          ),

      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/app/background.png"), // Path to your image
          fit: BoxFit.cover, // Covers the entire screen
        ),
      )
    );
  }
}