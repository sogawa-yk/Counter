import 'package:flutter/material.dart';

class MuscleCountPage extends StatefulWidget {
  const MuscleCountPage({Key? key}) : super(key: key);

  @override
  State<MuscleCountPage> createState() => _MuscleCountPageState();
}

class _MuscleCountPageState extends State<MuscleCountPage> {
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
            Text('10',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 200)),
            Text('20',
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
