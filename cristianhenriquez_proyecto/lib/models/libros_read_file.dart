import 'dart:convert' as convert;

import 'package:cristianhenriquez_proyecto/domain/libros.dart';
import 'package:flutter/services.dart';

class _LibrosReadFile {
  Future<List<Libros>> getLibros() async {
    final dataAssetBundle = await rootBundle.loadString('database/data.json');
    List<dynamic> librosListJson = convert.jsonDecode(dataAssetBundle);
    return librosListJson.map((e) => Libros.fromJson(e)).toList();
  }
}

final librosReadFile = _LibrosReadFile();
