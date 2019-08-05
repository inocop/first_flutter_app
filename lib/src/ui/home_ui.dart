import 'package:first_flutter_app/src/ui/random_words.dart';
import 'package:flutter/material.dart';

class HomeUi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeUiState();
  }
}

class HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("RandomWords"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<Null>(
                        settings: const RouteSettings(name: "/RandomWords"),
                        builder: (BuildContext context) => RandomWords()));
              },
            ),
            RaisedButton(
              child: Text("RandomWords2"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<Null>(
                        settings: const RouteSettings(name: "/RandomWords"),
                        builder: (BuildContext context) => RandomWords()));
              },
            ),
          ],
        )
      )
    );
  }
}
