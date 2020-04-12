import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class McRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget imageCarousel = SizedBox(
      height: 500,
      width: 350,
      child: Carousel(
        images: [
          NetworkImage('http://healthierlogo.com/wp-content/uploads/2016/05/IMG_1794-1030x773.jpg'),
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
      title: 'MCShowRoom',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('MC Show Room'),
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