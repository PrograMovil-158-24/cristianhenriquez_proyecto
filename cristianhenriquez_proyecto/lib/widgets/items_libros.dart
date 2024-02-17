import 'dart:html';

import 'package:flutter/material.dart';

List<Widget> listItems(List<dynamic>? data, BuildContext context) {
  List<Widget> listItems = [];
data?.forEach((element) {
  listItems.add(
    ListTile(
      title: Text(element.name),
        subtitle: Text(element.title),
        onTap: () {
          print('Tapped');
          //Navegacion a una pantalle del equipo .....  equipo/:id
        },
    )
  )
})