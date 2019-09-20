
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';
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
    return FutureBuilder(
        future: menuProvider.loadData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: _createListItems(snapshot.data, context),
            );
          }
          return null;
        });
  }

  List<Widget> _createListItems(List<dynamic> data, BuildContext context) {
    return data.map((opt) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(opt['texto']),
            leading: getIcon(opt['icon']),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
            onTap: () {
              // final route =
              //     MaterialPageRoute(builder: (context) => AvatarPage());
              // Navigator.push(context, route);
              Navigator.pushNamed(context, opt['ruta']);
            },
          ),
        ],
      );
    }).toList();
  }
}
