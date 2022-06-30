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
  var count = 0;

  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      count++;
      if (count >= ref.read(NumCountProvider.state).state) {
        timer.cancel();
      }
      if (mounted) {
        setState(
          () {},
        );
      }
    });
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
            Text(count.toString(),
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
