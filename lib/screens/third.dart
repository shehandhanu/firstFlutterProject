import 'package:flutter/material.dart';
import 'home.dart';

String _name;

class ThirdScreen extends StatelessWidget {
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Third Screen'),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
          )),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: _buildNameTextForm(),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: RaisedButton(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        print(_name);
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/second');
        },
        child: Icon(Icons.arrow_left),
        backgroundColor: Colors.orange,
      ),
    );
  }
}

Widget _buildNameTextForm() {
  return TextFormField(
    decoration: InputDecoration(
      hintText: 'Add your Name....',
    ),
    maxLength: 20,
    maxLines: 1,
    validator: (text) {
      return HelperValidator.nameValidate(text);
    },
    onSaved: (text) {
      _name = text;
      print(_name);
    },
  );
}

class HelperValidator {
  static String nameValidate(String value) {
    print('callled');
    if (value.isEmpty) {
      return "Name Cannot Be Empty";
    }
    if (value.length <= 2) {
      return "Name must be at least 2 characters long";
    }
    if (value.length > 50) {
      return "Name must be less than 50 characters long";
    }
    return null;
  }
}
