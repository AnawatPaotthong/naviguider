import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class EntreShowCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget imageCarousel = SizedBox(
      height: 300,
      width: 350,
      child: Carousel(
        images: [
          Image.network('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F96051725%2F126908742899%2F1%2Foriginal.20200309-201326?w=1000&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C19%2C960%2C480&s=ebaef76fa8d4c6f7f79d107680c76b26'),
          Image.network('https://i.ytimg.com/vi/NXzBCu66i-4/maxresdefault.jpg')
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
                  title: Text('MC Show Room', textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'InriaSans',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12
                ),),
                ),
                Image.network('https://www.beat.com.au/wp-content/uploads/2020/01/The-MC-Showroom-min.jpg'),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('Pop Up Exhibition', textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'InriaSans',
                  color: Colors.purpleAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
                  ),
                ),
                Image.network('https://www.linkingmakerandmarket.com/wp-content/uploads/2016/02/Linking-Maker-and-Market-Popup-exhibition-ecostyle-2015-1-1100x488.jpg',)
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