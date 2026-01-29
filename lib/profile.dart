import 'package:flutter/material.dart';
import 'package:my_first_project/settings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        leading: Icon(Icons.access_alarm_outlined),
        title: Text('Profile', style: TextStyle(color: Colors.black)),
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
            Text(userName),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'hellow home');
              },
              child: Text('Back to home'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
              child: Text('Back to Setting'),
            ),
          ],
        ),
      ),
    );
  }
}
