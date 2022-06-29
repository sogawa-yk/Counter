import 'package:flutter/material.dart';
import 'package:counter_app/view/muscle_count_page.dart';

class MuscleTrainingConfigPage extends StatefulWidget {
  const MuscleTrainingConfigPage({Key? key}) : super(key: key);

  @override
  State<MuscleTrainingConfigPage> createState() =>
      _MuscleTrainingConfigPageState();
}

class _MuscleTrainingConfigPageState extends State<MuscleTrainingConfigPage> {
  double _count = 20;
  double _tempo = 100;
  double _numSet = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('筋トレカウント設定')),
        body: Container(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(child: Text('${_count}回')),
                Slider(
                  value: _count,
                  max: 100,
                  divisions: 20,
                  label: _count.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _count = value;
                    });
                  },
                ),
                Center(child: Text('${_tempo}bpm')),
                Slider(
                    value: _tempo,
                    max: 240,
                    min: 1,
                    divisions: 239,
                    label: _tempo.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _tempo = value;
                      });
                    }),
                Center(child: Text('${_numSet}セット')),
                Slider(
                    value: _numSet,
                    max: 10,
                    min: 1,
                    divisions: 9,
                    label: _numSet.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _numSet = value;
                      });
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
