import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class DigitalBasedEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget imageCarousel = SizedBox(
      height: 300,
      width: 350,
      child: Carousel(
        images: [
          Image.network('https://i.pinimg.com/originals/ca/de/b6/cadeb6ce0c02ce72047f4d58c2d05671.jpg'),
          Image.network('https://lh3.googleusercontent.com/proxy/VYJZPf9NFvTDUciAjgOVrrckjizex2W_Mla16dsDtA2lvYqvYeL8FlbAf65JTbAQj2lBVPh9y6gr9NMszlp5t1JHsiGTFwMRZnDIfwZ-nto_YfnfOOXb-xo')
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
        fontWeight: FontWeight.normal
      ),),
    );

    Widget surroundCarousel = SizedBox(
      height: 350,
      width: 350,
      child: Carousel(
        images: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('VR AR MR', textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'InriaSans',
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
                  ),
                ),
                Image.network('https://i.pinimg.com/originals/31/b6/33/31b63379f550b9ffb45cb3c853225a8f.jpg'),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('Know And Share', textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'InriaSans',
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
                  ),
                ),
                Image.network('https://res.cloudinary.com/eddypisit/image/upload/c_fill,h_280,w_548/fvgbuswjvgeufaygpby8')
              ],
            ),
          ),
        ],
        showIndicator: false,
        borderRadius: false,
        moveIndicatorFromBottom: 180.0,
        noRadiusForIndicator: true,
        overlayShadow: true,
        overlayShadowColors: Colors.white,
        overlayShadowSize: 0.7,
      ),
    );


    Widget surrounded = Container(
      margin: EdgeInsets.all(30),
      child: Text('Surrounded Area',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'InriaSans',
        color: Colors.cyan,
        fontWeight: FontWeight.bold,
        fontSize: 30
        ),
      ),
    );

    return MaterialApp(
      title: 'Digital Based Exhibtion',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('Digital Based Exhibtion'),
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                imageCarousel,
                title,
                surrounded,
                surroundCarousel
              ],
            ),
          ),
        ),
      ),
    );
  }
}