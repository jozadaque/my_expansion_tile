import 'package:flutter/material.dart';

import 'my_expansion_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My ExpansionTile',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('My ExpansionTile'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                for (int i = 0; i < 50; i++) MyExpansionTile(count: i),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
