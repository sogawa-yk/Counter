import 'package:counter_app/view/muscle_training_config_page.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
        title: Text(widget.title),
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
                        child: Image.asset('images/muscle.png',
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
                        child: Image.asset('images/jump.png',
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
                        child: Image.asset('images/free.png',
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