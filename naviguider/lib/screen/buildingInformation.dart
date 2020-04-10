import 'package:flutter/material.dart';
import 'Information/oro.dart';

class MainMap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Widget mcButton = RaisedButton(
      onPressed: () => {},
      color: Colors.redAccent,
      child: Text('MC. Show Room',
      style: TextStyle(
        color: Colors.white
      ),),
    );

  Widget lxButton = RaisedButton(
      onPressed: () => {},
      color: Colors.orange,
      child: Text('LX Building Studies',
      style: TextStyle(
        color: Colors.white
      ),)
      ,
    );

  Widget escapeButton = RaisedButton(
      onPressed: () => {},
      color: Colors.orange.shade300,
      child: Text('Escape Room',
      style: TextStyle(
        color: Colors.white
      ),)
      ,
    );

  Widget oroButton = RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Oro()))},
      color: Colors.brown.shade300,
      child: Text('ORO',
      style: TextStyle(
        color: Colors.white
      ),)
      ,
    );

    Widget entButton = RaisedButton(
      onPressed: () => {},
      color: Colors.brown.shade500,
      child: Text('Entrepreneur Innovation Show Cart',
      style: TextStyle(
        color: Colors.white
      ),)
      ,
    );

    Widget venButton = RaisedButton(
      onPressed: () => {},
      color: Colors.blueAccent.shade700,
      child: Text('Vending Machine',
      style: TextStyle(
        color: Colors.white
      ),)
      ,
    );

    Widget exhibitButton = RaisedButton(
      onPressed: () => {},
      color: Colors.greenAccent,
      child: Text('Exhibition Zone',
      style: TextStyle(
        color: Colors.white
      ),)
      ,
    );

    Widget popupButton = RaisedButton(
      onPressed: () => {},
      color: Colors.purpleAccent,
      child: Text('PopUp Exhibition',
      style: TextStyle(
        color: Colors.white
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
          title: Text('LX Map'),
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