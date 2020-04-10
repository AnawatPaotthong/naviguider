import 'package:flutter/material.dart';
import 'designConcept.dart';
import 'buildingInformation.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget button(){
    return RaisedButton(
      onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => MainMap()))},
      textColor: Colors.deepOrange,
      child: Text('Press this to show map'),
    );
  }

    return MaterialApp(
      title: 'NaviGuider',
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.orange.shade400,
          title: Text('NaviGuider',style: TextStyle(fontFamily: 'InriaSans', color: Colors.white)),
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
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.insert_emoticon),
              title: Text('FeedBack',
                style: TextStyle(fontFamily: 'InriaSans', color: Colors.black, fontSize: 18)),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      );
    }
  }


