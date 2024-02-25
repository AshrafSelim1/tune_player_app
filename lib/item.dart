import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneItem {
  final Color color;
  final String sound;
  TuneItem({required this.color, required this.sound});

  void playsound(){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

