import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> _options = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"];

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();

    for (var opt in _options) {
      list.add(
        ListTile(
          title: Text(opt),
        ),
      );
      list.add(Divider());
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Temp"),
      ),
      body: ListView(children: _createItems()),
    );
  }
}
