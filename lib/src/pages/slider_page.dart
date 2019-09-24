import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SliderPageState();
}

class SliderPageState extends State<SliderPage> {
  double _sliderValue = 50.0;
  bool _lockCheck = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliders"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            Expanded(
              child: _createImage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: "size $_sliderValue",
      min: 0.0,
      max: 500.0,
      onChanged: _lockCheck
          ? null
          : (double value) {
              setState(() {
                _sliderValue = value;
              });
            },
      value: _sliderValue,
    );
  }

  Widget _createImage() {
    return Image(
        image: NetworkImage(
            "http://www.pngall.com/wp-content/uploads/4/Justice-League-PNG.png"),
        width: _sliderValue,
        fit: BoxFit.contain);
  }

  _createCheckBox() {
    // return Checkbox(
    //   onChanged: (bool value) {
    //     setState(() {
    //       _lockCheck = value;
    //     });
    //   },
    //   value: _lockCheck,
    // );

    return CheckboxListTile(
      title: Text("Block resize"),
      onChanged: (bool value) {
        setState(() {
          _lockCheck = value;
        });
      },
      value: _lockCheck,
    );
  }

  _createSwitch() {
    return SwitchListTile(
      title: Text("Block resize"),
      onChanged: (bool value) {
        setState(() {
          _lockCheck = value;
        });
      },
      value: _lockCheck,
    );
  }
}
