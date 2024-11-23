import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: const Text(
            'Welcome',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          ),
        ),
        body: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Expanded builder(int imageNumber, Color color) {
    return Expanded(
      child: TextButton(
          onPressed: (() {
            final player = AudioPlayer();
            player.play(AssetSource('1.mp3'));
          }),
          child: Image.asset('images/$imageNumber.jpg')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            builder(1, Colors.black),
            builder(5, Colors.black),
            builder(3, Colors.black)
          ],
        ),
      ),
    );
  }
}
