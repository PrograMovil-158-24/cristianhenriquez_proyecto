import 'package:cristianhenriquez_proyecto/models/libros_read_file.dart';
import 'package:cristianhenriquez_proyecto/widgets/items_libros.dart';
import 'package:flutter/material.dart';

Widget listLibros() {
  return FutureBuilder(
      future: librosReadFile.getLibros(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: listItems(snapshot.data, context),
          );
        } else {
          return const CircularProgressIndicator();
        }
      });
}
