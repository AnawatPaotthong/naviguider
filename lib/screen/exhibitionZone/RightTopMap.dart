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
import 'package:page_transition/page_transition.dart';
import 'package:photo_view/photo_view.dart';

class RightTopMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color mapColor = const Color.fromRGBO(104, 139, 47, 1.0);
     Widget selfPracticeButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: SelfPracticeLearning(), type: PageTransitionType.rightToLeftWithFade))},
      color: Colors.green,
      child: Text('Self Practice Learning',
      style: TextStyle(
        color: Colors.white,fontFamily: 'InriaSans',
      ),),
    );

  Widget activeExButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: ActiveEx(), type: PageTransitionType.rightToLeftWithFade))},
      color: Colors.green.shade900,
      child: Text('Active Exhibition',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

  Widget designStudioButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: DesignStudio(), type: PageTransitionType.rightToLeftWithFade))},
      color: Colors.green.shade600,
      child: Text('Design Studio',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

  Widget selfSnackButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: SelfSnack(), type: PageTransitionType.rightToLeftWithFade))},
      color: Colors.green.shade600,
      child: Text('Self Snacks',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget handsOnButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: HandsOnWorkShop(), type: PageTransitionType.rightToLeftWithFade))},
      color: Colors.green.shade800,
      child: Text('Hands On / Workshop',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget vrARMRButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: VrArMr(), type: PageTransitionType.rightToLeftWithFade))},
      color: Colors.green.shade700,
      child: Text('VR AR MR', 
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget mediatButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: MediaStudio(), type: PageTransitionType.rightToLeftWithFade))},
      color: Colors.green.shade700,
      child: Text('Media Studio',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget knowAndShareButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: KnowAndShare(), type: PageTransitionType.rightToLeftWithFade))},
      color: Colors.green.shade800,
      child: Text('Know And Share',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget selfStorageButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: SelfStorage(), type: PageTransitionType.rightToLeftWithFade))},
      color: Colors.green,
      child: Text('Self Storage',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget digitalBasedButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: DigitalBasedEx(), type: PageTransitionType.rightToLeftWithFade))},
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

    Widget photoMap = AspectRatio(
      aspectRatio: 2 / 1.5,
      child: ClipRect(
        child: PhotoView(
          imageProvider: AssetImage('images/map3.JPG'),
          minScale: PhotoViewComputedScale.contained * 0.8,
          maxScale: PhotoViewComputedScale.covered * 2,
          enableRotation: true,
          ),
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
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              photoMap,
              listOfButton
            ],
            ),
          ),
      ),
    );
  }
}