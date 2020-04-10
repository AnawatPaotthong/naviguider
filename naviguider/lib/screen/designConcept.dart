import 'package:flutter/material.dart';


class DesignConcept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design Concept',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.orange.shade400,
          title: Text('Design Concept'),
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/LXBuilding.jpg'),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rhoncus et purus et tincidunt. Vestibulum maximus lacus ut ante faucibus, non tempor justo elementum. Maecenas sodales ante nec sem luctus, sed iaculis lectus vestibulum. Praesent nisl dui, elementum a placerat sed, aliquam finibus metus. Aenean sollicitudin velit lacinia magna efficitur luctus. Donec at neque metus. Sed pulvinar sapien id facilisis sagittis. Nullam sed hendrerit nisl. Nam diam augue, finibus id feugiat ut, fermentum eget est. Ut in rutrum magna. Vivamus id ipsum vestibulum, sodales lacus vel, dignissim justo. Vivamus suscipit dolor eget interdum consectetur. Morbi eget tincidunt massa, quis tempor elit. Quisque scelerisque neque dui, ut tempor orci fermentum imperdiet. Interdum et malesuada fames ac ante ipsum primis in faucibus. In id ornare ligula.'),
            ],
          ),
        ),
      ),
    );

  }

}