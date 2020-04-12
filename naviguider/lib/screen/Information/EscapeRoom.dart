import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class EscapeRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget imageCarousel = SizedBox(
      height: 500,
      width: 350,
      child: Carousel(
        images: [
          NetworkImage('https://kiji.life/newkiji/wp-content/uploads/2018/02/Adult-Zone_%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B8%87%E0%B9%80%E0%B8%82%E0%B8%B2%E0%B8%A7%E0%B8%87%E0%B8%81%E0%B8%95.jpg'),
          NetworkImage('https://www.amequipmentsales.com/wp-content/uploads/2019/07/side.jpg')
        ],
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.lightGreenAccent,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.orange.withOpacity(0.5),
        borderRadius: true,
      ),
    );

    return MaterialApp(
      title: 'EscapeRoom',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('Escape Room'),
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              imageCarousel
            ],
          ),
        ),
      ),
    );
  }
}