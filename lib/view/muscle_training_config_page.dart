import 'package:flutter/material.dart';

class MuscleTrainingConfigPage extends StatefulWidget {
  const MuscleTrainingConfigPage({Key? key}) : super(key: key);

  @override
  State<MuscleTrainingConfigPage> createState() =>
      _MuscleTrainingConfigPageState();
}

class _MuscleTrainingConfigPageState extends State<MuscleTrainingConfigPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A'),
      ),
      body: Text('筋トレ設定ページ'),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
