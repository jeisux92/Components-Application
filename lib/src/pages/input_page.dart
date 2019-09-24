import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "s";
  String _email = "";
  String _password = "";
  String _date = "";
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
            Divider(),
            _createEmail(),
            Divider(),
            _createPassword(),
            Divider(),
            _createDate(),
            Divider(),
            _createPerson(),
          ]),
    );
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          hoverColor: Colors.pink,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.pink,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          counter: Text("Letras ${this._nombre.length}"),
          counterStyle: TextStyle(
            color: Colors.pink,
          ),
          hintText: "Nombre de la persona",
          hintStyle: TextStyle(
            color: Colors.pink,
          ),
          labelText: "Nombre",
          labelStyle: TextStyle(
            color: Colors.pink,
          ),
          helperText: "Solo el nombre",
          helperStyle: TextStyle(
            color: Colors.pink,
          ),
          suffixIcon: Icon(
            Icons.accessibility,
            color: Colors.pink,
          ),
          icon: Icon(
            Icons.account_circle,
            color: Colors.pink,
          )),
      style: TextStyle(
        decorationColor: Colors.pink,
      ),
      onChanged: (String value) {
        setState(() {
          _nombre = value;
        });
      },
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

  Widget _createPerson() {
    return ListTile(
      title: Text("Nombre es: $_nombre"),
      subtitle: Text("Email: $_email"),
    );
  }

  Widget _createEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hoverColor: Colors.pink,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.pink,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: "Email",
          hintStyle: TextStyle(
            color: Colors.pink,
          ),
          labelText: "Email",
          labelStyle: TextStyle(
            color: Colors.pink,
          ),
          helperStyle: TextStyle(
            color: Colors.pink,
          ),
          suffixIcon: Icon(
            Icons.alternate_email,
            color: Colors.pink,
          ),
          icon: Icon(
            Icons.email,
            color: Colors.pink,
          ),
        ),
        onChanged: (String value) => setState(() {
              _email = value;
            }));
  }

  Widget _createPassword() {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
          hoverColor: Colors.pink,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.pink,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: "Password",
          hintStyle: TextStyle(
            color: Colors.pink,
          ),
          labelText: "Password",
          labelStyle: TextStyle(
            color: Colors.pink,
          ),
          helperStyle: TextStyle(
            color: Colors.pink,
          ),
          suffixIcon: Icon(
            Icons.lock_open,
            color: Colors.pink,
          ),
          icon: Icon(
            Icons.lock,
            color: Colors.pink,
          ),
        ),
        onChanged: (String value) => setState(() {
              _password = value;
            }));
  }

  Widget _createDate() {
    return TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          hoverColor: Colors.pink,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.pink,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: "Password",
          hintStyle: TextStyle(
            color: Colors.pink,
          ),
          labelText: "Password",
          labelStyle: TextStyle(
            color: Colors.pink,
          ),
          helperStyle: TextStyle(
            color: Colors.pink,
          ),
          suffixIcon: Icon(
            Icons.lock_open,
            color: Colors.pink,
          ),
          icon: Icon(
            Icons.lock,
            color: Colors.pink,
          ),
        ),
        onChanged: (String value) => setState(() {
              _password = value;
            }));
  }
}
