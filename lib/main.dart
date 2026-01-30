// ignore: unused_element
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const isoStyleApp());
}

// ignore: camel_case_types
class isoStyleApp extends StatelessWidget {
  const isoStyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.amber,
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Home', style: TextStyle(color: Colors.black87)),
        trailing: CupertinoButton(
          child: Icon(CupertinoIcons.add, color: Colors.black),
          onPressed: () {},
        ),
      ),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            CupertinoActivityIndicator(
              radius: 20.34,
              color: CupertinoColors.black,
            ),
            CupertinoSwitch(value: false, onChanged: (value) {}),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class fromBox extends StatelessWidget {
  const fromBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Your email',
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                border: OutlineInputBorder(),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'please enter some text';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
