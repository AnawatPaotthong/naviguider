import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


class Oro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = SizedBox(
      height: 250,
      width: 250,
      child: Carousel(
        images: [
          Image.asset('images/oro.jpg'),
          Image.asset('images/oroPic.png'),
          Image.network('https://png.pngtree.com/png-clipart/20190612/original/pngtree-surprised-boy-png-image_3399593.jpg')
        ],
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.lightGreenAccent,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.orange.withOpacity(0.5),
        borderRadius: true,
      ),
    );

    Widget title = Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque, mauris vitae vulputate porttitor, urna est rutrum dolor,'
      'non ultricies risus est tempus justo. Aenean vel odio sit amet magna egestas pretium. Suspendisse quis turpis euismod, laoreet tortor eget,'
      'maximus purus. Aliquam euismod egestas efficitur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer aliquet',
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontFamily: 'InriaSans',
        color: Colors.red,
        fontWeight: FontWeight.bold
      ),),
    );

    return MaterialApp(
      title: 'Oro',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('Oro Mascot'),
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              imageCarousel,
              title
            ],
          ),
        ),
      ),
    );
  }
}