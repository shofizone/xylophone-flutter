import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.deepPurple,
  ];


  _playSound(int index){
    final player = AudioCache();
    player.play('note${index + 1}.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(7, (index) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    _playSound(index);
                  },
                  child: Material(
                    color: colors[index],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
