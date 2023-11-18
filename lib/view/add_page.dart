import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/constant/colors.dart';

class addPage extends StatelessWidget {
  const addPage({Key? key}) : super(key: key);


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
              height: 15,
            ),

            SizedBox(
              width: 360,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "ここをタップ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),

            const SizedBox(
              width: double.infinity,
              height: 15,
            ),

            const SizedBox(
              width: double.infinity,
              child: Text(
                '  課題がやばい、実験プロ３論文模擬実験プロ３論文模擬実験プロ３論文模擬実験プロ３論文模擬',
                style: TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.left,
              ),
            ),

        ],),


         // ここからサイドメニュー部分
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text("リスト"),
                onTap: (){
                // この中にメニューをタップした時の処理を記述する
                // 画面に１つずつ戻る
                  context.pop();
                  context.pop();
                },
              ),

              ListTile(
                title: const Text("ログアウト"),
                onTap: (){
                // この中にメニューをタップした時の処理を記述する
                  context.pop();
                  context.pop();
                  context.pop();
                },
              ),

              ListTile(
                title: const Text("設定"),
                onTap: (){},
              ),

            ],
          ),
        ),
        
        floatingActionButton: FloatingActionButton(
          onPressed: () =>{debugPrint("投稿"), context.pop()},
          tooltip: 'Increment',
          child: const Icon(Icons.near_me),
        ),
        
      );
  }
}