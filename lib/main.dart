import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1DE5E2), Color(0xFFB588F7)],
          ),
        ),
        child: FlatButton(
          onPressed: () {
            playSound(7);
          },
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF00C0FF), Color(0xFF4218B8)],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      playSound(2);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFFF0A6C), Color(0xFF4A3CDB)],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      playSound(3);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF00FFFF), Color(0xFF93278F)],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      playSound(4);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: FlatButton(
                    onPressed: () {
                      playSound(5);
                    },
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFFFE53B), Color(0xFF00FFFF)],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      playSound(6);
                    },
                  ),
                ),
              ),
              buildKey(),
            ],
          ),
        ),
      ),
    );
  }
}
