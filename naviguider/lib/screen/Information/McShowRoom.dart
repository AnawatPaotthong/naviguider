import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class McRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget imageCarousel = SizedBox(
      height: 300,
      width: 350,
      child: Carousel(
        images: [
          Image.network('https://www.beat.com.au/wp-content/uploads/2020/01/The-MC-Showroom-min.jpg'),
          Image.network('https://lh3.googleusercontent.com/proxy/HL0JrszTzTyySy3Xicq_qxDBFxajpIws5W3jevS-3V67T8Plp_POc7i12dUJzpKco7V11PmzOvypX8BMIuVgy_c3lgAp9PCSDRm1zl1uMB7xM1qlbvVgfVZVcyfxmT_BGKM7kA'),
          Image.network('https://www.creativespaces.net.au/uploads/listing-images/73942/resized/601x338.jpg')
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
      title: 'MCShowRoom',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('MC Show Room'),
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