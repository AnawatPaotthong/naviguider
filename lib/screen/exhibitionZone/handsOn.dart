import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HandsOnWorkShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget imageCarousel = SizedBox(
      height: 300,
      width: 350,
      child: Carousel(
        images: [
          Image.network('https://www.baanlaesuan.com/app/uploads/2019/07/cover-Activity.jpg'),
          Image.network('https://www.normanfosterfoundation.org/wp-content/uploads/2020/01/DAY-4_NFF_ON-CITIES-WORKSHOP_30_MAY_2019_G1A9768-1.jpg')
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
                  title: Text('Design Studio', textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'InriaSans',
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 12
                ),),
                ),
                Image.network('https://images.adsttc.com/media/images/5d7b/a7a9/284d/d1e0/b600/00b4/newsletter/Soar_Boxes-0096.jpg?1568384931'),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('Media Studio', textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'InriaSans',
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
                  ),
                ),
                Image.network('https://logosolusa.com/wp-content/uploads/parser/Media-Studio-Logo-1.jpg'),
              ],
            ),
          ),
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
                Image.network('https://i.pinimg.com/originals/31/b6/33/31b63379f550b9ffb45cb3c853225a8f.jpg')
              ],
            ),
          )
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
      title: 'Hands On / Workshop',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('Hands On / Workshop'),
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