import 'package:flutter/material.dart';
import 'package:naviguider/screen/Information/vendingMac.dart';
import 'package:page_transition/page_transition.dart';
import 'package:photo_view/photo_view.dart';
import 'Information/oro.dart';
import 'exhibitionZone/RightTopMap.dart';
import 'package:naviguider/screen/Information/EntreShowCart.dart';
import 'package:naviguider/screen/Information/EscapeRoom.dart';
import 'package:naviguider/screen/Information/LxStudies.dart';
import 'package:naviguider/screen/Information/McShowRoom.dart';
import 'package:naviguider/screen/Information/PopUp.dart';


class MainMap extends StatelessWidget{
  @override
  Color oroColor = const Color.fromRGBO(204, 90, 1, 1.0);
  Color entColor = const Color.fromRGBO(90, 38, 40, 1.0);
  Color escapeColor = const Color.fromRGBO(240, 136, 47, 1.0);
  Color lxColor = const Color.fromRGBO(241, 83, 44, 1.0);
  Color mcColor = const Color.fromRGBO(244, 2, 52, 1.0);
  Color vendColor = const Color.fromRGBO(2, 63, 117, 1.0);
  Color exhibitionColor = const Color.fromRGBO(104, 139, 47, 1.0);
  Color popUpColor = const Color.fromRGBO(116, 82, 152, 1.0);
  Color researchColor = const Color.fromRGBO(255, 255, 255, 1.0);

  Widget build(BuildContext context) {

  Widget mcButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: McRoom(), type: PageTransitionType.rightToLeftWithFade))},
      color: mcColor,
      child: Text('MC. Show Room',
      style: TextStyle(
        color: Colors.white,fontFamily: 'InriaSans',
      ),),
    );

  Widget lxButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: LxStudies(), type: PageTransitionType.rightToLeftWithFade))},
      color: lxColor,
      child: Text('LX Building Studies',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

  Widget escapeButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: EscapeRoom(), type: PageTransitionType.rightToLeftWithFade))},
      color: escapeColor,
      child: Text('Escape Room',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

  Widget oroButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: Oro(), type: PageTransitionType.rightToLeftWithFade))},
      color: oroColor,
      child: Text('ORO',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget entButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: EntreShowCart(), type: PageTransitionType.rightToLeftWithFade))},
      color: entColor,
      child: Text('Entrepreneur Innovation Show Cart',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget venButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: VendingMac(), type: PageTransitionType.rightToLeftWithFade))},
      color: vendColor,
      child: Text('Vending Machine', 
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget exhibitButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: RightTopMap(), type: PageTransitionType.rightToLeftWithFade))},
      color: exhibitionColor,
      child: Text('Exhibition Zone',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget popupButton = RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: Popup(), type: PageTransitionType.rightToLeftWithFade))},
      color: popUpColor,
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

  Widget photoMap = AspectRatio(
      aspectRatio: 2 / 1.5,
      child: ClipRect(
        child: PhotoView(
          imageProvider: AssetImage('images/map_with_marker1.JPG'),
          minScale: PhotoViewComputedScale.contained * 0.8,
          maxScale: PhotoViewComputedScale.covered * 2,
          enableRotation: true,
          ),
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