import 'package:flutter/material.dart';
import 'package:todoapp/constant/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todoapp/view/signup_page.dart';
import 'package:todoapp/view/test.dart';
import 'package:todoapp/authenticator.dart';

class loginPage extends StatelessWidget {
  loginPage({Key? key}) : super(key: key);

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
                'Log in',
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
                decoration: InputDecoration(
                    hintText: "passward",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: 300,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => signupPage(),
                    ),
                  );
                },
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 0, 0, 139)),
                ),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 20,
            ),
            SizedBox(
              height: 80,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, //R:236 G:227 B:206
                  backgroundColor: const Color.fromARGB(255, 6, 145, 65),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  final _result = await authenticator.emailSignIn(
                      email: _emailController.text,
                      password: _passController.text);
                  if (_result == true) {
                    // ignore: use_build_context_synchronously
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => test(),
                      ),
                    );
                  } else if (_result == false) {
                    //エラーメッセージ
                  }
                },
                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize: 45),
                ),
              ),
            ),
          ],
        ));
  }
}
