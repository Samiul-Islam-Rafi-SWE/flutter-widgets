// MaterialApp |Scaffold | text | center | center | Image | RichText | Icons
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  // instance for class ---> constractor {Full app er configaretion rakha hoi}
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DIU Code Education', //property
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // write whatever you want to show in screen

    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        //   child: Text(
        //     'Dafffodil International University. Welcolme To Our Daffodil International University',
        //     textAlign: TextAlign.center,
        //     maxLines: 2,
        //     style: TextStyle(
        //       fontSize: 24,
        //       fontWeight: FontWeight.w600,------------------------------>text part
        //       backgroundColor: const Color.fromARGB(255, 8, 86, 194),
        //       color: Colors.white,
        //       overflow: TextOverflow.ellipsis,
        //     ),
        //   ),
        // child: Icon(Icons.android, size: 88, color: Colors.black), -----> Icon part

        // image constractor---> Image.network(),Image.file(),Image.asset(),Image.memory()
        child: Image.network(
          'https://miro.medium.com/v2/resize:fit:1200/1*Qh2XQRh9_4uHiqgN_7MZmA.jpeg',
          width: 200,
          height: 300,
          fit: BoxFit.cover,
        ),
        // child: Image.asset(
        //   'assets/images/samiul.jpg',
        //   width: 300,
        //   height: 300,
        //   // fit: BoxFit.fill,//300*300 fill kore rakhe
        //   // fit: BoxFit.cover,
        //   // fit: BoxFit.fitWidth,
        //   // fit: BoxFit.fitHeight,
        //   fit: BoxFit.scaleDown,
        // ),
      ),
    );
  }
}
