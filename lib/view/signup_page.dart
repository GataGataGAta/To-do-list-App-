import 'package:flutter/material.dart';
import 'package:todoapp/constant/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todoapp/authenticator.dart';
import 'package:todoapp/view/test.dart';

class signupPage extends StatelessWidget {
  signupPage({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backcolor,
        body: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 100,
            ),
            const Center(
              child: Icon(Icons.account_circle, size: 100),
            ),
            const Center(
              child: Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 60,
                ),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 25,
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                '  User ID',
                style: TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 15,
            ),
            SizedBox(
              width: 360,
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: "User ID",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 25,
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                '  Password',
                style: TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 15,
            ),
            SizedBox(
              width: 360,
              child: TextField(
                controller: _passController,
                decoration: InputDecoration(
                    hintText: "passward",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 60,
            ),
            SizedBox(
              height: 80,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, //R:6 G:145 B:65
                  backgroundColor: const Color.fromARGB(255, 6, 145, 65),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  if (_emailController.text.isNotEmpty &&
                      _passController.text.isNotEmpty) {
                    await authenticator.signUp(
                        email: _emailController.text,
                        password: _passController.text);
                    debugPrint("test1");
                    // await authenticator.emailSignIn(
                    //     email: _emailController.text,
                    //     password: _passController.text);
                    debugPrint(
                        FirebaseAuth.instance.currentUser?.uid.toString());
                    //   await Navigator.of(context).push(
                    //       MaterialPageRoute(builder: ((context) => test())));
                  }
                },
                child: const Text(
                  'Sign up', //R:242 G:172 B:8
                  style: TextStyle(fontSize: 45),
                ),
              ),
            ),
          ],
        ));
  }
}
