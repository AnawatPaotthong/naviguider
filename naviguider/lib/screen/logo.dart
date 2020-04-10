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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/logo.png'),
              Button()
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


