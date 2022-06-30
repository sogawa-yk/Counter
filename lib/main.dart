import 'package:flutter/material.dart';
import 'package:counter_app/view/start_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final NumCountProvider = StateProvider((_) => 0.0);
final tempoProvider = StateProvider((_) => 30.0);
final setProvider = StateProvider((_) => 3.0);

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(),
    );
  }
}
