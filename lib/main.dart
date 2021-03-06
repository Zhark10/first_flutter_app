import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/widgets/news.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBody extends StatelessWidget {
  _launchURL() async {
    const url = 'https://vk.com/a.zharavin';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget build(BuildContext context) {
    return new Center(
        child: new Column(children: [
      new Text('Hello, Flutter'),
      new FlatButton(
        onPressed: _launchURL,
        child: Text('open my vk'),
        color: Colors.blue,
        textColor: Colors.white,
      )
    ]));
  }
}

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circe'),
    home: new Scaffold(
      appBar: new AppBar(title: Text('App title')),
      // body: new MyBody(),
      body: new NewsBox('Наменование первого поста',
          'Тут должен быть написан какой-то интересный текст, но у меня нет времени его предумывать, так что я дико извиняюсь, что тебе приходится читать эту хрень',
          imageurl: 'https://sun9-3.userapi.com/c852232/v852232624/1b8c10/Zy6qziPSQqU.jpg',),
    ),
  ));
}
