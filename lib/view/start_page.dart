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
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset('images/sample.png')),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () => {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
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
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
