import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/ui/top/top_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:todo_app/configs/config.dart';

void main() async {
  // 初期化処理を追加
  Config.environment = Flavor.RELEASE;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dotenv.load(fileName: ".env");
  runApp(
    // Riverpodでデータを受け渡しできる状態にする
    ProviderScope(
      child: ChatApp(),
    ),
  );
}
