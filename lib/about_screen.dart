import 'package:flutter/material.dart';
import 'package:pert3/text__about.dart';
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('About'),
        actions: <Widget>[
          Padding(padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.info)
          )
        ],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 200,
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/FTI UNTAR.png')
                    ],
                  ),
                ),
                Container(
                  width: 250,
                  height: 300,
                  padding: EdgeInsets.only(top:30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/Logo SI clear.png')
                    ],
                  ),
                )
              ],
            ),
          TextAbout()
          ]
      ),
    );
  }
}
