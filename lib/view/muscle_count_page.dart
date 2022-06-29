import 'dart:html';

import 'package:counter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';

class MuscleCountPage extends ConsumerStatefulWidget {
  const MuscleCountPage({Key? key}) : super(key: key);

  @override
  MuscleCountPageState createState() => MuscleCountPageState();
}

class MuscleCountPageState extends ConsumerState<MuscleCountPage> {
  @override
  void initState() {
    super.initState();
    if (ref.read(CurrentCountProvider.state).state <=
        ref.read(NumCountProvider.state).state) {
      Timer.periodic(const Duration(seconds: 1), (Timer timer) {
        ref.read(CurrentCountProvider.state).state++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('COUNT'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(ref.watch(CurrentCountProvider).toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 200)),
            Text(ref.watch(NumCountProvider).toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 200)),
            Container(
              width: 200,
              height: 340,
              child: Image.asset(('images/muscle_now.png')),
            )
          ],
        )));
  }
}
