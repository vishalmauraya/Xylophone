import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp( Xylophone());
}

class Xylophone extends StatelessWidget {
 // const Xylophone({Key? key}) : super(key: key);
  void playSound(int SoundNumber){
    final player=AudioPlayer();
    player.play(AssetSource("note$SoundNumber.wav"));

  }
  Expanded buildkey({required Color color,required int soundNumber}){
    return Expanded(
      child: TextButton(style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color)
      ),
        onPressed:(){
          playSound(soundNumber);} ,
        child: Text("Click Me"),
      )
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(color:Colors.red,soundNumber:1),
                buildkey(color:Colors.orange,soundNumber:2),
                buildkey(color:Colors.yellow,soundNumber:3),
                buildkey(color:Colors.green,soundNumber:4),
                buildkey(color:Colors.greenAccent,soundNumber:5),
                buildkey(color:Colors.blue,soundNumber:6),
                buildkey(color:Colors.purple,soundNumber:7),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
