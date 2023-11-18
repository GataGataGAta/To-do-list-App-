import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/view/list_page.dart';
import 'package:todoapp/view/login_page.dart';
import 'package:todoapp/view/signup_page.dart';
import 'router.dart';

void main() {
  runApp(MaterialApp(home: start()));
}

//画面の情報を定義する

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: MyRouter,
    );
  }
}
