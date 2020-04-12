import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class EntreShowCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget imageCarousel = SizedBox(
      height: 500,
      width: 350,
      child: Carousel(
        images: [
          NetworkImage('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F96051725%2F126908742899%2F1%2Foriginal.20200309-201326?w=1000&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C19%2C960%2C480&s=ebaef76fa8d4c6f7f79d107680c76b26'),
          NetworkImage('https://i.ytimg.com/vi/NXzBCu66i-4/maxresdefault.jpg')
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
      title: 'EntreShowCart',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('Entreperneur Innovation'),
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