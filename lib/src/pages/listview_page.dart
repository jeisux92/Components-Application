import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = ScrollController();
  List<int> _numberlist = List();
  int _lastItem = 0;
  bool _isLoading = false;
  @override
  void initState() {
    this._add10();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _fetchData();
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lists"),
        ),
        body: Stack(
          children: <Widget>[
            _createList(),
            _createLoading(),
          ],
        ));
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: getPage,
      child: ListView.builder(
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
      ),
    );
  }

  Future<Null> getPage() async {
    final duration = Duration(seconds: 2);
    new Timer(duration, () {
      _numberlist.clear();
      _lastItem++;
      _add10();
    });
    return Future.delayed(duration);
  }

  void _add10() {
    for (int n = 0; n < 10; n++) {
      _lastItem++;
      _numberlist.add(_lastItem);
    }

    setState(() {});
  }

  Future<Null> _fetchData() async {
    setState(() {
      _isLoading = true;
    });

    final duration = Duration(seconds: 2);
    return new Timer(duration, _httpResponse);
  }

  void _httpResponse() {
    setState(() {
      _isLoading = false;
    });

    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(milliseconds: 250),
    );

    _add10();
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    } else
      return Container();
  }
}
