import 'package:flutter/material.dart';

@immutable
class NewsBox extends StatelessWidget {
  final String _title;
  final String _text;
  String _imageurl;

  NewsBox(this._title, this._text, {String imageurl}) {
    _imageurl = imageurl;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140.0,
        color: Colors.black12,
        padding: new EdgeInsets.all(8),
        child: new Row(
          children: <Widget>[
            new Image.network(_imageurl,
                width: 100.0, height: 100.0, fit: BoxFit.cover),
            new Expanded(
                child: new Container(
                    padding: new EdgeInsets.all(8),
                    child: new Column(
                      children: <Widget>[
                        new Text(_title,
                            style: new TextStyle(fontSize: 20),
                            overflow: TextOverflow.ellipsis),
                        new Expanded(
                            child: new Text(
                          _text,
                          textAlign: TextAlign.justify,
                          softWrap: true,
                        ))
                      ],
                    )))
          ],
        ));
  }
}
