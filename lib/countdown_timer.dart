import 'dart:async';
import 'package:flutter/material.dart';
class CountdownTimer extends StatefulWidget {

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {

  int timeLeft=15;

  void _startCountDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countdown Timer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.timer, size:100,color: Colors.blue,),

            Text(
              timeLeft == 0? 'Selesai' : timeLeft.toString(),
              style: TextStyle(fontSize: 50),
            ),

            MaterialButton(
              onPressed: _startCountDown,
              child: Text('S T A R T',
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}

