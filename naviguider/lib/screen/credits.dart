import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Credits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget pageCredit = PageView(
      children: <Widget>[
        Container(
          color: Colors.indigo,
          ),
        Container(
          color: Colors.red
        ),
        Container(
          color: Colors.blue
        )
      ],
    );

    return MaterialApp(
      title: 'Hands On / Workshop',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('Hands On / Workshop'),
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),),
        ),
        body: PageView(
          children: <Widget>[
            pageCredit
          ]
        )
      ),
    );
  }
}