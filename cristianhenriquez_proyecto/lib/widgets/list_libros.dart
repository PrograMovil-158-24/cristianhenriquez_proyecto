import 'package:flutter/material.dart';

Widget listLibros() {
  return FutureBuilder(
      future: librosRead.getLibros(),
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
