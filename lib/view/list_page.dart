import 'package:flutter/material.dart';
import 'package:todoapp/constant/colors.dart';

class listPage extends StatelessWidget {
  const listPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backcolor,
        appBar: AppBar(
          title: Text('To do list'),
        ),

        body: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 100,
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
                onPressed: () {},
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
                
                onPressed: () {},
                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize: 45),
                ),
              ),
            ),

          ],
        ),
        
         // ここからサイドメニュー部分
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text("メニュー1"),
                onTap: (){
                // この中にメニューをタップした時の処理を記述する
                },
              ),

              ListTile(
                title: const Text("メニュー2"),
                onTap: (){},
              ),

              ListTile(
                title: const Text("メニュー3"),
                onTap: (){},
              )
            ],
          ),
        ),
        
        floatingActionButton: FloatingActionButton(
          onPressed: () =>{print("押したね？")},
          tooltip: 'Increment',
          child: const Icon(Icons.timer),
        ),
        
      );
  }
}
