import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class VrArMr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget imageCarousel = SizedBox(
      height: 300,
      width: 350,
      child: Carousel(
        images: [
          Image.network('https://i.pinimg.com/originals/31/b6/33/31b63379f550b9ffb45cb3c853225a8f.jpg'),
          Image.network('https://www.siamvr.com/wp-content/uploads/2019/06/yggdrazil-group-booth-thailand-game-expo-2019.jpg'),
          Image.network('https://lh3.googleusercontent.com/proxy/Ahz83bcG_LDDF5M0NdJtTbZouQAWWS8miAJWA82Uf8GnWGthUa3F4y4yaI5UBE7LzHpgXS3Kc2I9H9L6oY27DqNNdzeh_pkGE0zvv_gBRLFgvJsByZ8Hh7I')
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
      title: 'VR AR MR',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('VR AR MR'),
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