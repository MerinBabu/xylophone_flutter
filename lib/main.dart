import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: FlatButton(
            child: Center(
                child:Text('Click')),
            onPressed: () {
              AudioCache player = AudioCache();
              player.play('assets/note1.wav');

              },
          ),
        ),
      ),

    );
  }
}

