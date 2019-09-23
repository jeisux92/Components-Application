import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: _listCards(),
    );
  }

  ListView _listCards() {
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: <Widget>[
        _cardTipo1(),
        SizedBox(
          height: 20.0,
        ),
        // _cardTipo2(),
        // SizedBox(
        //   height: 20.0,
        // ),
        _cardTipo3(),
      ],
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("Soy el título de esta tarjeta"),
            subtitle: Text(
                "Aquí estamos con la descripción de la tarjeta que quiero que ustedes vean de la idea que quiero mostrarles"),
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: () {},
              ),
              SizedBox(
                width: 30,
              ),
              FlatButton(
                child: Text(
                  "Ok",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1546268060-2592ff93ee24?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80"),
            placeholder: AssetImage("assets/jar-loading.gif"),
            fadeInDuration: const Duration(
              milliseconds: 200,
            ),
            height: 300,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0))
        ],
      ),
      margin: EdgeInsets.all(0),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }

  Widget _cardTipo3() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: FadeInImage(
          image: NetworkImage(
              "https://images.unsplash.com/photo-1546268060-2592ff93ee24?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80"),
          placeholder: AssetImage("assets/jar-loading.gif"),
          fadeInDuration: const Duration(
            milliseconds: 200,
          ),
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
