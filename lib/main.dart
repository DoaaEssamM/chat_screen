import 'package:flutter/material.dart';
import 'package:messages/HomeScreen.dart';

void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      home: HomeScreen(),
    );
  }
}