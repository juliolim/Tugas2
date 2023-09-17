import 'package:flutter/material.dart';
import 'package:pert3/countdown_timer.dart';
import 'package:pert3/about_screen.dart';
import 'package:pert3/stopwatch.dart';

class  MenuBarr extends StatefulWidget {
  const MenuBarr({Key ? key}) : super(key: key);

  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBarr> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('MenuBar'),
    ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  CountdownTimer()));
              },
              splashColor:  Colors.blue,
              child: Center(
                child:Column(
                  mainAxisSize: MainAxisSize.min ,
                  children: const <Widget>[
                    Icon(Icons.timer, size:50,color: Colors.blue,),
                    Text('CountDownTimer', style: TextStyle(fontSize: 15.0)),
                  ],
                )
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => StopWatch()),
                );
              },
              splashColor:  Colors.blue,
              child: Center(
                  child:Column(
                    mainAxisSize: MainAxisSize.min ,
                    children: const <Widget>[
                      Icon(Icons.timer, size:50,color: Colors.blue,),
                      Text('StopWatch', style: TextStyle(fontSize: 15.0)),
                    ],
                  )
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  AboutScreen()));
              },
              splashColor:  Colors.blue,
              child: Center(
                  child:Column(
                    mainAxisSize: MainAxisSize.min ,
                    children: const <Widget>[
                      Icon(Icons.info, size:50,color: Colors.blue,),
                      Text('About', style: TextStyle(fontSize: 15.0)),
                    ],
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
