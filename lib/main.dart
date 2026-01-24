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
      home: X(),
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
      body: SingleChildScrollView(
        child: ListView.builder(
          // physics: NeverScrollableScrollPhysics(),
          itemCount: studentList.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Text("${index + 1}. ", style: TextStyle(color: Colors.black87)),
                Text(studentList[index]),
              ],
            );
          },
        ),
      ),
    );
  }
}

class X extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          child: Column(
            // spacing: 10,
            children: [
              // appbar part
              Container(
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 4,
                  ),
                  child: Center(child: Text("Home")),
                ),
              ),

              // body
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blueGrey,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.brown,
              ),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: studentList.length,
                itemBuilder: (BuildContext studentContext, int index) {
                  return Column(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: [
                            Text(
                              "${index + 1}. ",
                              style: TextStyle(color: Colors.black87),
                            ),
                            Text(studentList[index]),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),

              // ...List.generate(studentList.length, (index) {
              //   return Row(
              //     children: [
              //       Text(
              //         "${index + 1}. ",
              //         style: TextStyle(color: Colors.black87),
              //       ),
              //       Text(studentList[index]),
              //     ],
              //   );
              // }),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.brown,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
