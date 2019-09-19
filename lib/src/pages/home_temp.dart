import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> _options = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"];

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();

    for (var opt in _options) {
      list
        ..add(
          ListTile(
            title: Text(opt),
          ),
        )
        ..add(
          Divider(),
        );
    }

    return list;
  }

  List<Widget> _createItemsShort() {
    return _options.map((String opt) {
      return Column(children: <Widget>[
        ListTile(
          title: Text(opt),
          leading: Icon(Icons.account_balance_wallet),
          trailing: Icon(Icons.arrow_right),
          onTap: (){},
        ),
        Divider()
      ]);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Temp"),
      ),
      body: ListView(children: _createItemsShort()),
    );
  }
}
