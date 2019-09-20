import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar page"),
        actions: <Widget>[
          Container(
            child: RaisedButton(
              color: Colors.blue,
              shape: CircleBorder(side: BorderSide.none),
              elevation: 0,
              onPressed: () {},
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://kabina34radio.com/wp-content/uploads/2019/05/URnaMrya.jpg"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text("SL"),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          fadeInDuration: Duration(
            milliseconds: 200,
          ),
          placeholder: AssetImage("assets/jar-loading.gif"),
          image: NetworkImage(
              "https://m.eldiario.es/fotos/Stan-Lee-lanzando-presentacion-Spiderman_EDIIMA20181112_0851_19.jpg"),
        ),
      ),
    );
  }
}
