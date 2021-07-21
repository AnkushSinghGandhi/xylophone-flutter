import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  Expanded buildkey({Color color, int sound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$sound.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, sound: 1),
              buildkey(color: Colors.orange, sound: 2),
              buildkey(color: Colors.yellow, sound: 3),
              buildkey(color: Colors.green, sound: 4),
              buildkey(color: Colors.green[900], sound: 5),
              buildkey(color: Colors.blue, sound: 6),
              buildkey(color: Colors.purple, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
