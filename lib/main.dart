import 'package:flutter/material.dart';
import 'package:youtubefav/pages/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube Favs',
      home: HomeScreen(),
    );
  }
}
