import 'package:flutter/material.dart';

class RightTopMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

     Widget selfPracticeButton = RaisedButton(
      onPressed: () => {},
      color: Colors.green,
      child: Text('Self Practice Learning',
      style: TextStyle(
        color: Colors.white,fontFamily: 'InriaSans',
      ),),
    );

  Widget activeExButton = RaisedButton(
      onPressed: () => {},
      color: Colors.green,
      child: Text('Active Exhibition',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

  Widget designStudioButton = RaisedButton(
      onPressed: () => {},
      color: Colors.green,
      child: Text('Design Studio',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

  Widget selfSnackButton = RaisedButton(
      onPressed: () => {},
      color: Colors.green,
      child: Text('Self Snacks',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget handsOnButton = RaisedButton(
      onPressed: () => {},
      color: Colors.green,
      child: Text('Hands On / Workshop',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget vrARMRButton = RaisedButton(
      onPressed: () => {},
      color: Colors.green,
      child: Text('VR AR MR', 
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget mediatButton = RaisedButton(
      onPressed: () => {},
      color: Colors.green,
      child: Text('Media Studio',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget knowAndShareButton = RaisedButton(
      onPressed: () => {},
      color: Colors.green,
      child: Text('Know And Share',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget selfStorageButton = RaisedButton(
      onPressed: () => {},
      color: Colors.green,
      child: Text('Self Storage',
      style: TextStyle(
        color: Colors.white, fontFamily: 'InriaSans',
      ),)
      ,
    );

    Widget digitalBasedButton = RaisedButton(
      onPressed: () => {},
      color: Colors.green,
      child: Text('Digital Based Exhibition',
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