import 'package:counter_app/main.dart';
import 'package:counter_app/view/finish_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:counter_app/view/rest_page.dart';
import 'package:counter_app/providers/providers.dart';

class MuscleCountPage extends ConsumerStatefulWidget {
  const MuscleCountPage({Key? key}) : super(key: key);

  @override
  MuscleCountPageState createState() => MuscleCountPageState();
}

class MuscleCountPageState extends ConsumerState<MuscleCountPage> {
  var _count = 0;
  final _audio = AudioCache();

  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 60000 ~/ ref.read(tempoProvider)),
        (Timer timer) {
      if (mounted) {
        _count++;
        _audio.play('audios/count_sound.wav');
        if (_count >= ref.read(NumCountProvider.state).state) {
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
            Text(_count.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 150)),
            Text(ref.watch(NumCountProvider).toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 150)),
            Container(
              width: 150,
              height: 270,
              child: Image.asset(('assets/images/muscle_now.png')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _count < ref.read(NumCountProvider.state).state
                      ? null
                      : () {
                          if (ref.read(setCountProvider.state).state ==
                              ref.read(setProvider)) {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return FinishPage();
                            }));
                          } else {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return RestPage();
                            }));
                          }
                        },
                  child: Text('NEXT'),
                )
              ],
            )
          ],
        )));
  }
}
