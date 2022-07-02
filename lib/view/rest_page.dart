import 'package:counter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';
import 'package:counter_app/view/muscle_count_page.dart';
import 'package:counter_app/providers/providers.dart';

class RestPage extends ConsumerStatefulWidget {
  const RestPage({Key? key}) : super(key: key);

  @override
  RestPageState createState() => RestPageState();
}

class RestPageState extends ConsumerState<RestPage> {
  var _count = 0;

  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (mounted) {
        _count++;
        if (_count >= ref.read(restLengthProvider.state).state) {
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 200)),
            Text(ref.watch(restLengthProvider).toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 200)),
            Container(
              width: 200,
              height: 340,
              child: Image.asset(('assets/images/muscle_now.png')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _count < ref.read(restLengthProvider.state).state
                      ? null
                      : () {
                          ref.read(setCountProvider.state).state++;
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return MuscleCountPage();
                          }));
                        },
                  child: Text('NEXT'),
                )
              ],
            )
          ],
        )));
  }
}
