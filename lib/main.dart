import 'package:flutter/material.dart';
import 'package:pert3/about_screen.dart';
import 'package:pert3/countdown_timer.dart';
import 'package:pert3/login_screen.dart';
import 'package:pert3/menubar.dart';
import 'package:pert3/stopwatch.dart';

void main() => runApp(StopwatchApp());

class StopwatchApp extends StatelessWidget{
  Widget build (BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}