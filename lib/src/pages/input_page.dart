import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input text"),
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            _createInput(),
          ]),
    );
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 10.0,
            ),
          ),
          border: OutlineInputBorder(),
          hoverColor: Colors.pink,
          counter: Text("0/20"),
          hintText: "Nombre de la persona",
          labelText: "Nombre",
          helperText: "Solo el nombre",
          suffixIcon: Icon(
            Icons.accessibility,
          ),
          icon: Icon(
            Icons.account_circle,
            color: Colors.pink,
          )),
      style: TextStyle(
        decorationColor: Colors.pink,
      ),
    );
  }

  Widget _createDropDown() {
    return DropdownButton<String>(
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      style: TextStyle(color: Colors.deepPurple),
      elevation: 16,
      iconSize: 24,
      value: "1",
      onChanged: (String value) {},
      items: [
        DropdownMenuItem(
          value: "1",
          child: Text("1"),
        ),
        DropdownMenuItem(
          value: "2",
          child: Text("2"),
        ),
        DropdownMenuItem(
          value: "3",
          child: Text("3"),
        )
      ],
    );
  }
}
