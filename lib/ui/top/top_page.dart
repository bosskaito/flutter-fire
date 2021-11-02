import 'package:flutter/material.dart';
import 'package:todo_app/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/ui/login/user_login.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopPage(),
    );
  }
}

// ConsumerWidgetでProviderから値を受け渡す
// ログイン画面用Widget
class TopPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          // 背景画像
          image: DecorationImage(
            image: NetworkImage(
                'https://booth.pximg.net/3485c196-a915-4948-852d-f6663964a1a2/i/3180081/41f6dad0-9ded-49bc-bfc0-086b0283a55d.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Text(
                //envの呼び出し
                dotenv.env['VAR_TITLE'].toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: "NewTegomin",
                ),
              ),
              margin: const EdgeInsets.only(top: 200),
            ),
            //真ん中
            Container(
              child: Row(
                //横並び
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  // 表示するページ(ウィジェット)を指定する
                                  builder: (context) => LoginPage()));
                        },
                        child: const Text('ログイン'),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  // 表示するページ(ウィジェット)を指定する
                                  builder: (context) => LoginPage()));
                        },
                        child: const Text('新規会員登録'),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
