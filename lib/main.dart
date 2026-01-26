//listview |

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

final List<String> studentList = [
  'jahid',
  'samiul',
  'fahid',
  'kamrul',
  'Rofiq',
  'kamal',
  'Simul',
  'Daddodil',
  'Fokir',
  'Salam',
  'Rabbi',
];

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

      //   body: SingleChildScrollView(

      //     child: Column(
      //       children: [
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //         Text('daffodil international university'),
      //       ],
      //     ),
      //   ),

      //ListView
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     Text('samiul'),
      //     Text('samiul Islam rafi'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //   ],
      // ),
      // body: ListView.builder(
      //   itemCount: 100,
      //   itemBuilder: (context, index) {
      //     return Text('${index + 1}', style: TextStyle(fontSize: 36));
      //   },
      // ),
      //
      // body: Column(
      //   children: [
      //     Text('Daffodil International University'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'),
      //     Text('dAFFOSDDKNDKDNCKND'), //Overflow For the Text
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
            Text('Samiul Islam Rafi'),
          ],
        ),
      ),
    );
  }
}
