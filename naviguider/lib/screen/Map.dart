import 'package:flutter/material.dart';
import 'package:naviguider/screen/Information/EntreShowCart.dart';
import 'package:naviguider/screen/Information/EscapeRoom.dart';
import 'package:naviguider/screen/Information/LxStudies.dart';
import 'package:naviguider/screen/Information/McShowRoom.dart';
import 'package:naviguider/screen/Information/PopUp.dart';
import 'package:naviguider/screen/Information/vendingMac.dart';
import 'Information/oro.dart';
import 'exhibitionZone/RightTopMap.dart';


class MainMap extends StatelessWidget{
  @override
  Color oroColor = const Color.fromRGBO(204,90,1,1.0);
  Widget build(BuildContext context) {

<<<<<<< HEAD
    Widget mcButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => McRoom()))},
=======
  Widget mcButton = RaisedButton(
      onPressed: () => {},
>>>>>>> 1890fe9c212660492659e7b22a0ca74d8227a07b
      color: Colors.redAccent,
      child: Text('MC. Show Room',
      style: TextStyle(
        color: Colors.white,fontFamily: 'InriaSans',
      ),),
    );

  Widget lxButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => LxStudies()))},
      color: Colors.orange,
      child: Text('LX Building Studies',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

  Widget escapeButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => EscapeRoom()))},
      color: Colors.orange.shade300,
      child: Text('Escape Room',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

  Widget oroButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Oro()))},
      color: oroColor,
      child: Text('ORO',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget entButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => EntreShowCart()))},
      color: Colors.brown.shade500,
      child: Text('Entrepreneur Innovation Show Cart',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget venButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => VendingMac()))},
      color: Colors.blueAccent.shade700,
      child: Text('Vending Machine', 
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget exhibitButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => RightTopMap()))},
      color: Colors.greenAccent,
      child: Text('Exhibition Zone',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget popupButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Popup()))},
      color: Colors.purpleAccent,
      child: Text('PopUp Exhibition',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

  Widget listOfButton = (
    Table(
      defaultColumnWidth: FlexColumnWidth(1.0),
      columnWidths: {0: FractionColumnWidth(.5), 1: FractionColumnWidth(.5)},
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(children: [
          mcButton,
          lxButton,
        ]),
        TableRow(children: [
          entButton,
          escapeButton,
        ]),
        TableRow(children: [
          oroButton,
          popupButton,
        ]),
        TableRow(children: [
          venButton,
          exhibitButton,
        ]),
      ],
      )
  );

    return MaterialApp(
      title: 'LX Main Map',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('LX Map',
          style: TextStyle(fontFamily: 'InriaSans')),
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),),
        ),
        body: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Image.asset('images/Map1.JPG',
              height: 240,
              width: 600,
              fit: BoxFit.cover,),
              listOfButton
            ],
          ),
        ),
      ),
    );
  }
}