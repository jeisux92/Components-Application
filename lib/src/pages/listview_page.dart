import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = ScrollController();
  List<int> _numberlist = List();
  int _lastItem = 0;

  @override
  void initState() {
    this._add10();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        this._add10();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lists"),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _numberlist.length,
      itemBuilder: (BuildContext context, int index) {
        final imagen = _numberlist[index];
        return FadeInImage(
          fit: BoxFit.cover,
          placeholder: AssetImage("assets/jar-loading.gif"),
          image: NetworkImage("https://picsum.photos/id/$imagen/500/300"),
        );
      },
    );
  }

  void _add10() {
    for (int n = 0; n < 10; n++) {
      _lastItem++;
      _numberlist.add(_lastItem);
    }

    setState(() {});
  }
}
