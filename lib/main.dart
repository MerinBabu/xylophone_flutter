import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.

  void playSound(int keyNo){
    final player = AudioCache();
    player.play('note${keyNo}.wav');

  }
  Expanded buildKey({Color color, int keyNo}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed:(){
          playSound(keyNo);},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Xylophone',
            style: TextStyle(color: Colors.white),
          ),),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, keyNo:1 ),
              buildKey(color: Colors.orange, keyNo:2 ),
              buildKey(color: Colors.yellow, keyNo:3 ),
              buildKey(color: Colors.green, keyNo:4 ),
              buildKey(color: Colors.blue, keyNo:5 ),
              buildKey(color: Colors.indigo, keyNo:6 ),
              buildKey(color: Colors.purple, keyNo:7 ),
            ],
          ),
        ),
      ),

    );
  }
}

