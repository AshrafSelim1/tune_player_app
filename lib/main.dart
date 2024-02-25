import 'package:flutter/material.dart';
import 'package:tune_player_app/item.dart';

void main() {
  runApp(TuneApp());
}

class TuneApp extends StatelessWidget {
  const TuneApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TuneItem> tunes = [
      TuneItem(color: Colors.orange, sound: 'sound/note1.wav'),
      TuneItem(color: Colors.orangeAccent, sound: 'sound/note2.wav'),
      TuneItem(color: Colors.yellowAccent, sound: 'sound/note3.wav'),
      TuneItem(color: Colors.green, sound: 'sound/note4.wav'),
      TuneItem(color: Colors.greenAccent, sound: 'sound/note5.wav'),
      TuneItem(color: Colors.blue, sound: 'sound/note6.wav'),
      TuneItem(color: Colors.lightBlueAccent, sound: 'sound/note7.wav'),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.grey,
          title: Text(
            'Tune Player',
            style: TextStyle(),
          ),
        ),
        body: Column(
            children: tunes
                .map((e) => TuneModel(
                      tune: e,
                    ))
                .toList()),
      ),
    );
  }
}

class TuneModel extends StatelessWidget {
  TuneModel({super.key, required this.tune});
  final TuneItem tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          color: tune.color,
        ),
        onTap: () {
          tune.playsound();
        },
      ),
    );
    ;
  }
}
