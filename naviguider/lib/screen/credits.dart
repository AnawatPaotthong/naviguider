import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Credits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget pageCredit = PageView(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset('images/paint.jpg', width: 400, height: 350,),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque, mauris vitae vulputate porttitor, urna est rutrum dolor,'
                  'non ultricies risus est tempus justo. Aenean vel odio sit amet magna egestas pretium. Suspendisse quis turpis euismod, laoreet tortor eget,'
                  'maximus purus. Aliquam euismod egestas efficitur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer aliquet',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                  fontFamily: 'InriaSans',
                  color: Colors.red,
                  fontWeight: FontWeight.bold
                  )),
                ),
              ]
            ),
          ),
          ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset('images/tae.jpg', width: 400, height: 350,),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque, mauris vitae vulputate porttitor, urna est rutrum dolor,'
                  'non ultricies risus est tempus justo. Aenean vel odio sit amet magna egestas pretium. Suspendisse quis turpis euismod, laoreet tortor eget,'
                  'maximus purus. Aliquam euismod egestas efficitur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer aliquet',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                  fontFamily: 'InriaSans',
                  color: Colors.red,
                  fontWeight: FontWeight.bold
                  )),
                ),
              ]
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset('images/poom.jpg', width: 400, height: 350,),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque, mauris vitae vulputate porttitor, urna est rutrum dolor,'
                  'non ultricies risus est tempus justo. Aenean vel odio sit amet magna egestas pretium. Suspendisse quis turpis euismod, laoreet tortor eget,'
                  'maximus purus. Aliquam euismod egestas efficitur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer aliquet',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                  fontFamily: 'InriaSans',
                  color: Colors.red,
                  fontWeight: FontWeight.bold
                  )),
                ),
              ]
            ),
          ),
        )
      ],
    );

    Widget imageCarousel = SizedBox(
      height: 300,
      width: 350,
      child: Carousel(
        images: [
          Image.asset('images/Loker1.jpg'),
          Image.asset('images/Locker.jpg'),
          Image.asset('images/Locker2.jpg')
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
      margin: const EdgeInsets.all(15),
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
      title: 'Credits',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('Credits'),
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