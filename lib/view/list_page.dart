import 'package:go_router/go_router.dart';
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


         // ここからサイドメニュー部分
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text("ログアウト"),
                onTap: (){
                // この中にメニューをタップした時の処理を記述する
                // 画面に１つずつ戻る
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
          onPressed: () =>{debugPrint("いや、絶対押すねツ！"),context.push('/add')},// (push)次のページadd_pageへ飛ぶ
          tooltip: 'Increment',
          child: const Icon(Icons.chat),
        ),
        
      );
  }
}
