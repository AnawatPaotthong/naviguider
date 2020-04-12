import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class LxStudies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget imageCarousel = SizedBox(
      height: 500,
      width: 350,
      child: Carousel(
        images: [
          //AssetImage('images/learningSpace3.jpg'),
          //AssetImage('images/Locker2.jpg'),
          //AssetImage('images/Locker3.jpg') 
            
            
          
           NetworkImage('https://lh3.googleusercontent.com/proxy/NcYyqWaUhx3MgQhAVHVxnJyM8dHOh0wSK9ANjdcM1W9lPmJti2zzG1ijZaG3YI-GAH33msplwXnoOjnqgsYLmtngI1TKQmngTSHSjHlUyVZH2qh8jjJPH0lHajOaxME'),
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
      title: 'LxStudies',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('Lx Building Studies'),
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