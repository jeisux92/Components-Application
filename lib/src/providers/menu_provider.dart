import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  Future<List<dynamic>> loadData() async {
    final response = await rootBundle.loadString("data/menu_opts.json");
    Map dataMap = json.decode(response);
    options = dataMap['rutas'];
    return options;
  }
}

final menuProvider = _MenuProvider();
