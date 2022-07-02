import 'package:counter_app/main.dart';
import 'package:counter_app/view/muscle_training_config_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FinishPage extends ConsumerWidget {
  const FinishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('カウントアプリ'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('お疲れ様',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 100)),
          Image.asset('assets/images/free.png'),
          ElevatedButton(
              onPressed: () =>
                  {Navigator.popUntil(context, (route) => route.isFirst)},
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                elevation: 16,
              ),
              child: Text('トップページに戻る'))
        ],
      )),
    );
  }
}
