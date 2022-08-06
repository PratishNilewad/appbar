import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        shadowColor: Colors.red,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        elevation: 15.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('You pressed Search icon.')));
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You pressed Menu icon.')));
            },
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: Center(
        child: Text('This is the body Area'),
      ),
    );
  }
}
