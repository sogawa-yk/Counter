import 'package:counter_app/main.dart';
import 'package:counter_app/view/muscle_training_config_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:counter_app/view/jump_config_page.dart';

class StartPage extends ConsumerWidget {
  const StartPage({Key? key}) : super(key: key);

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        width: 150,
                        height: 240,
                        child: Image.asset('assets/images/muscle.png',
                            fit: BoxFit.contain))),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () => {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return MuscleTrainingConfigPage();
                                  }))
                                },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              elevation: 16,
                            ),
                            child: Text('筋トレ'))))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        width: 150,
                        height: 240,
                        child: Image.asset('assets/images/jump.png',
                            fit: BoxFit.contain))),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () => {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return JumpConfigPage();
                                  }))
                                },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              elevation: 16,
                            ),
                            child: Text('縄跳び'))))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        width: 150,
                        height: 240,
                        child: Image.asset('assets/images/free.png',
                            fit: BoxFit.contain))),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () => {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return MuscleTrainingConfigPage();
                                  }))
                                },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              elevation: 16,
                            ),
                            child: Text('FREE'))))
              ],
            )
          ])),
    );
  }
}
