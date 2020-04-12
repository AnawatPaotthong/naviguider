import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class VendingMac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget imageCarousel = SizedBox(
      height: 500,
      width: 350,
      child: Carousel(
        images: [
          NetworkImage('https://cdn.shopify.com/s/files/1/0506/3177/products/seaga-infinity-INF5C-left_600x.jpg?v=1487368702'),
          NetworkImage('https://www.amequipmentsales.com/wp-content/uploads/2019/07/side.jpg')
        ],
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.lightGreenAccent,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.orange.withOpacity(0.5),
        borderRadius: true,
      ),
    );

    return MaterialApp(
      title: 'vendingMachine',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('Vending Machine'),
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              imageCarousel
            ],
          ),
        ),
      ),
    );
  }
}