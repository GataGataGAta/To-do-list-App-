import 'package:flutter/material.dart';
import 'package:todoapp/view/first_page.dart';

void main() {
  runApp(const MaterialApp(home: FirstPage()));
}

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
