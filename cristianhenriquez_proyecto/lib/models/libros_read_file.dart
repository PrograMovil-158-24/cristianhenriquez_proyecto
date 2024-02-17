import 'dart:convert' as convert;

import 'package:flutter/services.dart';

class _LibrosReadFile {
  Future<List<Libros>> getLibros() async {
    final _dataAssetBundle = await rootBundle.loadString('database/data.json');
    List<dynamic> _LibrosListJson = convert.jsonDecode(_dataAssetBundle);
    return _librosListJson.map((e) => Libros.fromJson(e)).toList();
  }
}

final librosReadFile = _LibrosReadFile();
