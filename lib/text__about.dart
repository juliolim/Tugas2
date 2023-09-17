import 'package:flutter/material.dart';
class TextAbout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      <Widget>[
        Text(
          'Nama : Julio Lim',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Padding(padding: EdgeInsets.only(top: 30)),
        Text(
          'NIM: 825210020',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
