import 'dart:io';

import 'package:components/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    menuProvider.options;
    return ListView(
      children: _createListItems(),
    );
  }

  List<Widget> _createListItems() {
    final client = HttpClient();
    return [
      ListTile(
        title: Text("Hello world"),
      ),
      Divider(),
      ListTile(
        title: Text("Hello world"),
      ),
      Divider(),
      ListTile(
        title: Text("Hello world"),
      ),
      Divider(),
      ListTile(
        title: Text("Hello world"),
      ),
      Divider(),
    ];
  }
}
