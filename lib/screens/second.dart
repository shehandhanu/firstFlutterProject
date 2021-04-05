import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class SecondScreen extends StatelessWidget {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Second Screen'),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context, HomeScreen());
            },
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Second Screen',
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 10,
                obscureText: false,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 20.0),
                controller: _controller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed: _controller.clear,
                  ),
                  hintText: 'Your Name Plz........!',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/third');
        },
        child: Icon(Icons.arrow_right),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
