import 'package:counter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';

class MuscleCountPage extends ConsumerStatefulWidget {
  const MuscleCountPage({Key? key}) : super(key: key);

  @override
  MuscleCountPageState createState() => MuscleCountPageState();
}

class MuscleCountPageState extends ConsumerState<MuscleCountPage> {
  var count = 0;
  final _audio = AudioCache();

  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 60000 ~/ ref.read(tempoProvider)),
        (Timer timer) {
      if (mounted) {
        count++;
        _audio.play('audios/count_sound.wav');
        if (count >= ref.read(NumCountProvider.state).state) {
          timer.cancel();
        }
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
              child: Image.asset(('assets/images/muscle_now.png')),
            )
          ],
        )));
  }
}
