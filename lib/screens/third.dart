import 'package:flutter/material.dart';

import 'home.dart';

class ThirdScreen extends StatelessWidget {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Second Screen'),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
          )),
      body: Container(
          child: Column(children: <Widget>[
        Container(
          color: Colors.amber,
          height: 300,
        )
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/third');
        },
        child: Icon(Icons.arrow_left),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
