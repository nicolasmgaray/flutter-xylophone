import 'package:flutter/material.dart';
import "package:audioplayers/audio_cache.dart";

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play("note$note.wav");
  }

  Expanded buildKey({note: int, color: Color}) => Expanded(
        child: FlatButton(
            color: color,
            onPressed: () {
              playSound(note);
            }),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(note: 1, color: Colors.red),
              buildKey(note: 2, color: Colors.orange),
              buildKey(note: 3, color: Colors.yellow),
              buildKey(note: 4, color: Colors.green),
              buildKey(note: 5, color: Colors.teal),
              buildKey(note: 6, color: Colors.blue),
              buildKey(note: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
