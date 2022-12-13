import 'package:flutter/material.dart';

import 'my_checkbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Checkbox',
      home: MyContainer(),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox'),
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: MyCheckbox(),
    );
  }
}
