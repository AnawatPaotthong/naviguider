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
                  title: Text('Media Studio', textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'InriaSans',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12
                ),),
                ),
                Image.network('https://logosolusa.com/wp-content/uploads/parser/Media-Studio-Logo-1.jpg')
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('Hands On / Workshop', textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'InriaSans',
                  color: Colors.purpleAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
                  ),
                ),
                Image.network('https://www.baanlaesuan.com/app/uploads/2019/07/cover-Activity.jpg'),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('Digital Based Exhibition', textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'InriaSans',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12
                ),),
                ),
                Image.network('https://i.pinimg.com/originals/ca/de/b6/cadeb6ce0c02ce72047f4d58c2d05671.jpg'),
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
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12
                ),),
                ),
                Image.network('https://res.cloudinary.com/eddypisit/image/upload/c_fill,h_280,w_548/fvgbuswjvgeufaygpby8'),
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