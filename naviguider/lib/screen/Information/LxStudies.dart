import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class LxStudies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget imageCarousel = SizedBox(
      height: 400,
      width: 380,
      child: Carousel(
        images: [
          NetworkImage('https://png.pngtree.com/element_our/20190528/ourlarge/pngtree-2-5d-style-learning-class-education-element-image_1139126.jpg'),
          Image.asset('images/ProjectorRoom.jpg'),
          Image.asset('images/LearningSpace1.jpg'),
          Image.asset('images/LearningSpace2.jpg')
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
              imageCarousel,
              title
            ],
          ),
        ),
      ),
    );
  }
}