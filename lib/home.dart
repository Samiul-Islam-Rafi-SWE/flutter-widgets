import 'package:flutter/material.dart';
import 'package:my_first_project/profile.dart';
import 'package:my_first_project/settings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        leading: Icon(Icons.access_alarm_outlined),
        title: Text('Home', style: TextStyle(color: Colors.black)),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Settings();
                    },
                  ),
                );
              },
              child: Text('Go to Settings'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Profile(userName: 'Samiul Islam Rafi'),
                  ),
                ).then((value) {
                  print(value);
                });
              },
              child: Text('Go to Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
