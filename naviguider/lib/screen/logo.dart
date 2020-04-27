import 'package:flutter/material.dart';
import 'package:naviguider/screen/credits.dart';
import 'package:page_transition/page_transition.dart';
import 'designConcept.dart';
import 'Map.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget button(){
    return RaisedButton(
      onPressed: () => {Navigator.push(context, PageTransition(child: MainMap(), type: PageTransitionType.rightToLeft))},
      textColor: Colors.deepOrange,
      child: Text('Press this to show map'),
    );
  }

    return MaterialApp(
      title: 'NaviGuider',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade400,
          title: Text('NaviGuider', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'InriaSans', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: new Color(0xff622F74),
                gradient: LinearGradient(
                  colors: [new Color(0xFFF57C00),
                  new Color(0xFFFDD835)],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  )
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 125.0,
                  child: Image.asset('images/logo.png'),
                ),
                Padding(padding: EdgeInsets.only(top:10.0),),
                button()
              ],
            )
          ],
        ),
      ),
    );
  }
}

  class NavDrawer extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.only(top: 100, left: 10),
              child: Text(
                'Side menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                    color: Colors.orangeAccent.shade400,
                    ),
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Design Concept',
                style: TextStyle(fontFamily: 'InriaSans', color: Colors.black, fontSize: 18)),
              onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => DesignConcept()))},
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Return To Map',
                style: TextStyle(fontFamily: 'InriaSans', color: Colors.black, fontSize: 18)),
              onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => MainMap()))},
            ),
            ListTile(
              leading: Icon(Icons.face),
              title: Text('Credits',
                style: TextStyle(fontFamily: 'InriaSans', color: Colors.black, fontSize: 18)),
              onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Credits()))},
            )
          ],
        ),
      );
    }
  }


