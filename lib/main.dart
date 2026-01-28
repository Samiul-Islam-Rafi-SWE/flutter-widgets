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

class Home extends StatelessWidget {
  List<String> studentList = [
    "Samiul",
    'jihad',
    'Daffodil',
    'Montu',
    'Factors',
    'adnan',
  ];

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
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //       Text('Samiul Islam Rafi'),
      //     ],
      //   ),
      // ),
      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   children: [
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
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //     Text('Daffodil International University'),
      //   ],
      // ),

      /* List Of Text*/
      // body: ListView.builder(
      //   itemCount: 100,
      //   itemBuilder: (context, index) {
      //     return Text('${index + 1}', style: TextStyle(fontSize: 32));
      //   },
      // ),
      // body: ListView.builder(
      //   itemCount: studentList.length,
      //   itemBuilder: (context, index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Column(
      //         children: [
      //           Text(
      //             studentList[index], // ✅ Correct usage
      //             style: TextStyle(fontSize: 18),
      //           ),
      //           Divider(),
      //         ],
      //       ),
      //     );
      //   },
      // ),
      // body: ListView.separated(
      //   itemCount: studentList.length,
      //   itemBuilder: (context, index) {
      //     return Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Text(
      //           textAlign: TextAlign.center,
      //           studentList[index], // ✅ Correct usage
      //           style: TextStyle(fontSize: 18),
      //         ),
      //         Text(
      //           textAlign: TextAlign.center,
      //           studentList[index], // ✅ Correct usage
      //           style: TextStyle(fontSize: 18),
      //         ),
      //       ],
      //     );
      //   },
      //   separatorBuilder: (context, index) {
      //     return Divider(
      //       height: 0,
      //       thickness: 3,
      //       endIndent: 10,
      //       indent: 10,
      //       color: Colors.blue,
      //     );
      //   },
      // ),
      body: GridView.builder(
        itemCount: studentList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [Text('Role - ${index + 1}'), Text(studentList[index])],
          );
        },
      ),

      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 6,
      //   ),
      //   children: [
      //     Text('1'),
      //     Text('2'),
      //     Text('3'),
      //     Text('4'),
      //     Text('5'),
      //     Text('6'),
      //     Text('1'),
      //     Text('1'),
      //     Text('1'),
      //     Text('1'),
      //     Text('1'),
      //   ],
      // ),
    );
  }
}
