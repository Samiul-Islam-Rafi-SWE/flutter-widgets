// Buttons(ElevatedButton , textButton, IconButton, GesturDetector , Inkwell) |
//Text_input--> (TextField) | container | rechTest | padding

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Essential widgets',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home, color: Colors.black87),
        title: Text('WIDGETS', style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            onPressed: () {
              showAboutDialog(context: context);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Buttons mainly work evenfire -=- ElevatedButton
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.red,
            //     foregroundColor: Colors.white,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(9),
            //       side: BorderSide(width: 1, color: Colors.greenAccent),
            //     ),
            //     textStyle: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
            //     // padding: EdgeInsets.all(12),
            //     padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
            //   ),
            //   onPressed: () {
            //     print('Ok your press working');
            //   },
            //   child: Text('Press Here'),
            // ),
            // TextButton(
            //   style: TextButton.styleFrom(
            //     foregroundColor: const Color.fromARGB(255, 77, 255, 83),
            //     textStyle: TextStyle(fontSize: 34),
            //   ),

            //   onPressed: () {},
            //   child: Text('Send money', style: TextStyle(fontSize: 12)),
            // ),
            // IconButton(
            //   onPressed: () {
            //     print('please add a picture');
            //   },
            //   icon: Icon(Icons.add_a_photo, color: Colors.deepOrange),
            // ),
            // //only output
            // GestureDetector(
            //   onTap: () {
            //     print('on Tap detected');
            //   },
            //   onDoubleTap: () {
            //     print('on Double tap detected');
            //   },
            //   onLongPress: () {
            //     print('on LOng press detected');
            //   },
            //   child: Column(
            //     children: [
            //       Text('My Name :'),
            //       Icon(Icons.add_alarm_sharp),
            //       Row(children: [Text('This is a Row')]),
            //     ],
            //   ),
            // ),
            // //register fitback show
            // InkWell(
            //   splashColor: Colors.red,
            //   radius: 16,
            //   borderRadius: BorderRadius.circular(30),
            //   onTap: () {
            //     print('ok On tap detected');
            //   },
            //   onDoubleTap: () {
            //     print('Ok on double tap');
            //   },
            //   onLongPress: () {
            //     print('Ok long tap');
            //   },
            //   child: Column(
            //     children: [
            //       Text('Inkwel output run'),
            //       Icon(Icons.access_alarms_outlined),
            //       Row(children: [Text('this is a row')]),
            //     ],
            //   ),
            // ),
            // //Text_input--> (TextField) | container | rechTest
            // Padding(
            //   padding: const EdgeInsets.all(16),
            //   child: TextFormField(
            //     // controller: TextEditingController(),//text inptu , text clear
            //     style: TextStyle(fontSize: 23, color: Colors.black),
            //     maxLength: 23,
            //     decoration: InputDecoration(
            //       hintText: 'Enter Your email',
            //       hintStyle: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.w400,
            //       ),

            //       // label: Text('Email'),
            //       labelText: 'Email',
            //       labelStyle: TextStyle(
            //         fontSize: 20,
            //         color: Colors.black,
            //         backgroundColor: const Color.fromARGB(255, 63, 192, 21),
            //       ),
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(16),
            //         // borderSide: BorderSide(width: 4),
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(width: 2, color: Colors.black),
            //         borderRadius: BorderRadius.circular(23),
            //       ),

            //       enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(16),
            //         borderSide: BorderSide(width: 3, color: Colors.black26),
            //       ),
            //       fillColor: const Color.fromARGB(255, 18, 165, 163),
            //       filled: true,
            //       prefix: Icon(Icons.add),
            //       suffixIcon: Icon(Icons.remove_red_eye),
            //     ),
            //   ),
            // ),

            //container
            Wrap(
              spacing: 8,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                  alignment: Alignment.center,
                  child: Text('samiul'),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    // border: Border(
                    //   top: BorderSide(color: Colors.black, width: 3),
                    //   bottom: BorderSide(color: Colors.red),
                    // ),
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage('assets/images/samiul.jpg'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.amberAccent,
                        spreadRadius: 5,
                        blurRadius: 4,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),

                  alignment: Alignment.center,
                  child: Text(
                    'samiul',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
