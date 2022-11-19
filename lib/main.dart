import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  var my = MyApp();
  runApp(my);
}

class  MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MainApp();
  }
}




Widget MainApp(){
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: body(),
    ),
  );
}

Widget body(){
  return SafeArea(
      child: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/drum.png'),
             fit: BoxFit.fitWidth
            )
        ),

child: buttons(),
      )
);
}



Widget buttons(){
  return Column(
    children: [
      Expanded(child:  Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Expanded(child:TextButton(onPressed: () {
            playAudio('c1.wav');
          }, child: Text('1'))),
          Expanded(child:TextButton(onPressed: () {
            playAudio('c2.wav');
            }, child: Text('2'))),
        ],
      ),),

      Expanded(child:  Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child:TextButton(onPressed: () {
            playAudio('h1.wav');
          }, child: Text('3'))),
          Expanded(child:TextButton(onPressed: () {
            playAudio('h2.wav');
          }, child: Text('4'))),
        ],
      ),),

      Expanded(child:  Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child:TextButton(onPressed: () {
            playAudio('k1.wav');
          }, child: Text('5'))),
          Expanded(child:TextButton(onPressed: () {
            playAudio('k2.wav');
          }, child: Text('6'))),

        ],
      ),),

    ],
  );
}




void playAudio(audio){
  var player = AudioCache();
  player.play(audio);
}