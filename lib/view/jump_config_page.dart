import 'package:counter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/view/muscle_count_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:counter_app/providers/providers.dart';

class JumpConfigPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(title: const Text('筋トレカウント設定')),
        body: Container(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                    child: Text('1セットあたりの回数',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))),
                Center(child: Text('${ref.watch(NumCountProvider)}回')),
                Slider(
                  value: ref.watch(NumCountProvider),
                  max: 500,
                  divisions: 20,
                  label: ref.watch(NumCountProvider).round().toString(),
                  onChanged: (double value) {
                    ref.read(NumCountProvider.state).state = value;
                  },
                ),
                Center(
                    child: Text('一回当たりのカウントの速さ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))),
                Center(child: Text('${ref.watch(tempoProvider)}bps')),
                Slider(
                    value: ref.watch(tempoProvider),
                    max: 3,
                    min: 0.5,
                    divisions: 5,
                    label: ref.watch(tempoProvider).round().toString(),
                    onChanged: (double value) {
                      ref.read(tempoProvider.state).state = value;
                    }),
                Center(
                    child: Text('セット数',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))),
                Center(child: Text('${ref.watch(setProvider)}セット')),
                Slider(
                    value: ref.watch(setProvider),
                    max: 10,
                    min: 1,
                    divisions: 9,
                    label: ref.watch(setProvider).round().toString(),
                    onChanged: (double value) {
                      ref.read(setProvider.state).state = value;
                    }),
                Center(
                    child: Text('セット間の休憩時間の長さ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))),
                Center(child: Text('${ref.watch(restLengthProvider)}秒')),
                Slider(
                    value: ref.watch(restLengthProvider),
                    max: 120,
                    min: 10,
                    divisions: 11,
                    label: ref.watch(restLengthProvider).round().toString(),
                    onChanged: (double value) {
                      ref.read(restLengthProvider.state).state = value;
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Preview')),
                    ElevatedButton(
                        onPressed: () => {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return MuscleCountPage();
                              }))
                            },
                        child: Text('Start'))
                  ],
                )
              ],
            )));
  }
}
