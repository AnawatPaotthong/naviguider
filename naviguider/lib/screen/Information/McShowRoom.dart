import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class McRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget imageCarousel = SizedBox(
      height: 300,
      width: 250,
      child: Carousel(
        images: [
          NetworkImage('https://www.beat.com.au/wp-content/uploads/2020/01/The-MC-Showroom-min.jpg'),
          NetworkImage('https://s3-media0.fl.yelpcdn.com/bphoto/zNlvsUIpVawQ5w0rNOnPxA/o.jpg'),
          NetworkImage('https://lh3.googleusercontent.com/proxy/wotN4lmCcC0-Rq48kLgEABGXfwmlDocha51KJ7V3kedHBeoPpNIAq-oMPasee6kSa6_i4pXe7eluGGVZ_9kjNQnCvyMuS_Bqf_UaAeQvDXjurxVT-0hC9_-svIqFoepoSYFf8g')
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