import 'package:flutter/material.dart';
import 'designConcept.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NaviGuider',
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.orange.shade400,
          title: Text('NaviGuider'),
        ),
        body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
        Container(
        decoration: BoxDecoration(
            color: new Color(0xff622F74),
        gradient: LinearGradient(
          colors: [new Color(0xFFF57C00),new Color(0xFFFDD835) ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
    ),
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    CircleAvatar(
    backgroundColor: Colors.white,
    radius: 125.0,
    child: Image(
    image:  AssetImage('assets/images/logo.png'),

    ),
    ),
    Padding(
    padding: EdgeInsets.only(top: 10.0),
    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Button(){
    return OutlineButton(
      onPressed: () => {},
      textColor: Colors.deepOrange,
      child: Text('Press this to show map'),
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
              title: Text('Design Concept'),
              onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => DesignConcept()))},
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Return To Map'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.face),
              title: Text('Credits'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.insert_emoticon),
              title: Text('FeedBack'),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      );
    }
  }


