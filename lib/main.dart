import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:animate_do/animate_do.dart';
// import 'package:flutter_animate/flutter_animate.dart';

void main() => runApp(XylophoneApp());



class XylophoneApp extends StatelessWidget {
  bool _toggle=true;

  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  // void _Banimated() {
  //   setState(() {
  //     _toggle = !_toggle;
  //   });
  // }


  Expanded buildKey({required Color color, required int num}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              gradient:
              LinearGradient(colors: [Colors.black, color,color,color,Colors.white, color, ])
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 2,
            ),
            onPressed: () {
              playSound(num);
            }, child: null,

          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: BounceInRight(
            duration: Duration(seconds: 3),
            child: GestureDetector(
              // onTap: _Banimated(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(color: Colors.red, num: 1),
                  buildKey(color: Colors.orange, num: 2),
                  buildKey(color: Colors.yellow, num: 3),
                  buildKey(color: Colors.green, num: 4),
                  buildKey(color: Colors.cyan, num: 4),
                  buildKey(color: Colors.blue, num: 6),
                  buildKey(color: Colors.purple, num: 7),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
