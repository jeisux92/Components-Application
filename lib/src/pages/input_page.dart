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
  String _dropDownValue = "X-Ray";
  TextEditingController _inputFieldDateController = new TextEditingController();

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
            _createDate(context),
            Divider(),
            _createDropDown(),
            Divider(),
            _createPerson(),
          ]),
    );
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          counter: Text("Letras ${this._nombre.length}"),
          counterStyle: TextStyle(
            color: Colors.pink,
          ),
          hintText: "Nombre de la persona",
          labelText: "Nombre",
          helperText: "Solo el nombre",
          suffixIcon: Icon(
            Icons.accessibility,
          ),
          icon: Icon(
            Icons.account_circle,
          )),
      onChanged: (String value) {
        setState(() {
          _nombre = value;
        });
      },
    );
  }

  Widget _createDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        DropdownButton(
          value: _dropDownValue,
          onChanged: (String value) {
            setState(() {
              _dropDownValue = value;
            });
          },
          items: _getDropDownOptions(),
        ),
      ],
    );
  }

  List<String> _superPowers = [
    "X-Ray",
    "Super force",
    "Storm",
    "Speed",
    "Swimming"
  ];
  List<DropdownMenuItem<String>> _getDropDownOptions() {
    return _superPowers.map((i) {
      return DropdownMenuItem(
        value: i,
        child: Text("$i"),
      );
    }).toList();
  }

  Widget _createPerson() {
    return ListTile(
      title: Text("Nombre es: $_nombre"),
      subtitle: Text("Email: $_email"),
      trailing: Text(_dropDownValue),
    );
  }

  Widget _createEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: "Email",
          labelText: "Email",
          suffixIcon: Icon(
            Icons.alternate_email,
          ),
          icon: Icon(
            Icons.email,
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
          hintText: "Password",
          labelText: "Password",
          suffixIcon: Icon(
            Icons.lock_open,
          ),
          icon: Icon(
            Icons.lock,
          ),
        ),
        onChanged: (String value) => setState(() {
              _password = value;
            }));
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.datetime,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        hintText: "Fecha de nacimiento",
        labelText: "Fecha de nacimiento",
        suffixIcon: Icon(
          Icons.calendar_today,
        ),
        icon: Icon(
          Icons.lock,
        ),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      firstDate: new DateTime(2018),
      initialDate: new DateTime.now(),
      lastDate: new DateTime(2025),
      locale: Localizations.localeOf(context),
    );

    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFieldDateController.text = _date;
      });
    }
  }
}
