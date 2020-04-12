import 'package:flutter/material.dart';
import 'package:naviguider/screen/exhibitionZone/activeEx.dart';
import 'package:naviguider/screen/exhibitionZone/designStudio.dart';
import 'package:naviguider/screen/exhibitionZone/digitalBased.dart';
import 'package:naviguider/screen/exhibitionZone/handsOn.dart';
import 'package:naviguider/screen/exhibitionZone/knowAndShare.dart';
import 'package:naviguider/screen/exhibitionZone/mediaStudio.dart';
import 'package:naviguider/screen/exhibitionZone/selfPrac.dart';
import 'package:naviguider/screen/exhibitionZone/selfSnack.dart';
import 'package:naviguider/screen/exhibitionZone/selfStorage.dart';
import 'package:naviguider/screen/exhibitionZone/vrARMR.dart';

class RightTopMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color mapColor = const Color.fromRGBO(104, 139, 47, 1.0);
     Widget selfPracticeButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => SelfPracticeLearning()))},
      color: Colors.green,
      child: Text('Self Practice Learning',
      style: TextStyle(
        color: Colors.white,fontFamily: 'InriaSans',
      ),),
    );

  Widget activeExButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => ActiveEx()))},
      color: Colors.green.shade900,
      child: Text('Active Exhibition',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

  Widget designStudioButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => DesignStudio()))},
      color: Colors.green.shade600,
      child: Text('Design Studio',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

  Widget selfSnackButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => SelfSnack()))},
      color: Colors.green.shade600,
      child: Text('Self Snacks',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget handsOnButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => HandsOnWorkShop()))},
      color: Colors.green.shade800,
      child: Text('Hands On / Workshop',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget vrARMRButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => VrArMr()))},
      color: Colors.green.shade700,
      child: Text('VR AR MR', 
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget mediatButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => MediaStudio()))},
      color: Colors.green.shade700,
      child: Text('Media Studio',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget knowAndShareButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => KnowAndShare()))},
      color: Colors.green.shade800,
      child: Text('Know And Share',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget selfStorageButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => SelfStorage()))},
      color: Colors.green,
      child: Text('Self Storage',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget digitalBasedButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => DigitalBasedEx()))},
      color: Colors.green.shade900,
      child: Text('Digital Based Exhibition',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget listOfButton = (
    Table(
      defaultColumnWidth: FlexColumnWidth(.5),
      columnWidths: {0: FractionColumnWidth(.45), 1: FractionColumnWidth(.5)},
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(children: [
          selfPracticeButton,
          activeExButton,
        ]),
        TableRow(children: [
          designStudioButton,
          handsOnButton,
        ]),
        TableRow(children: [
          vrARMRButton,
          mediatButton,
        ]),
        TableRow(children: [
          knowAndShareButton,
          selfSnackButton,
        ]),
        TableRow(children: [
          digitalBasedButton,
          selfStorageButton,
        ]),
      ],
      )
  );

    return MaterialApp(
      title: 'Exhibition Zone',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('Exhibition Zone'),
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('images/map3.JPG',
              fit: BoxFit.fill,),
              listOfButton
            ],
          ),
        ),
      ),
    );
  }
}