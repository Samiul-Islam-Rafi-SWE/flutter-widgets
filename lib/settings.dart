import 'package:flutter/material.dart';
import 'package:my_first_project/home.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        leading: Icon(Icons.access_alarm_outlined),
        title: Text('Settings', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.amber,
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
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to previous page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                  (route) => false,
                );
              },
              child: Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
