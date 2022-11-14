import 'package:flutter/material.dart';

void main() {
  var my = MyApp();
  runApp(my);
}

class  MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
return application();
  }
}

Widget application(){
return MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.blueGrey,
    body: SafeArea(
      child: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
       image: DecorationImage(
         image: AssetImage('images/drum.png'),
         fit:BoxFit.fitWidth,
       ),
        ),
        child: Container(

        ),
      ),
    ),
  ),
);
}