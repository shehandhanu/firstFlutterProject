import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  var items = List<String>.generate(100, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.star, color: Colors.white),
            title: Text(items[index]),
            subtitle: Text('This is sample subtitle'),
            trailing: IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {},
            ),
            onTap: () {},
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/second');
        },
        child: Icon(Icons.arrow_right),
        backgroundColor: Colors.orange,
      ),
    );
  }
}

// ListView(
//         padding: EdgeInsets.only(top: 10),
//         children: <Widget>[
//           ListTile(
//             leading: Icon(Icons.star, color: Colors.white),
//             title: Text('Star Tile'),
//             subtitle: Text('This is sample subtitle'),
//             trailing: IconButton(
//               icon: Icon(Icons.menu, color: Colors.white),
//               onPressed: () {},
//             ),
//             onTap: () {},
//           ),
//           Divider(),
//         ],
//       ),
