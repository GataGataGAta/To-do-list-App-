import 'package:flutter/material.dart';
import 'package:todoapp/constant/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backcolor,
        body: Row(
          children: [Container(color: Colors.black)],
        ));
  }
}
