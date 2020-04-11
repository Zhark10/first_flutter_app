import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Scaffold(
      appBar: new AppBar(title: Text('App title')),
      body: new Center(
        child: new Column(
          children: [
            new Text('Hello, Flutter'),
            new FlatButton(
              onPressed: (){}, 
              child: new Text('Button'),
              )
          ]
        )
      ),
    ),
  ));
}
