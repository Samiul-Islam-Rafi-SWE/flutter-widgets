// Scaffold | colum | Row | Dialog | Bottom Sheet

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'widget',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

// column => vartically
// ROw = > Horizontally
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade50,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('DIU-DAFFODIL', style: TextStyle(color: Colors.blueAccent)),
        leading: Icon(Icons.home, color: Colors.indigo),
        actions: [
          IconButton(
            onPressed: () {
              // ScaffoldMessenger.of(context).showSnackBar(
              //   // SnackBar(
              //   //   content: Text('Money has been Transfer'),
              //   //   backgroundColor: Colors.red,
              //   //   duration: Duration(seconds: 1),
              //   // ),
              // );

              //----------> alart dialoge
              // showAboutDialog(context: context);
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('send money'),
                    content: Text('are you sure that you want to sand money'),
                  );
                },
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Daffodil University'),
            Text('Welocme Samiul'),
            Text('From'),
            Text('Samiul'),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Gretting '),
                Text('from '),
                Text('samiul'),
                Column(children: [Text('Date'), Text('24-23-2002')]),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('This id is'), Text('241-35-430'), Text('name')],
            ),
            Column(
              children: [
                Text('your name is '),
                Text('Samiul Islam Rafi  '),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.date_range),
                        Text('date : '),
                        Text('23/23/1025'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Text('date name'),
          ],
        ),
      ),
    );
  }
}
