import 'package:cristianhenriquez_proyecto/widgets/list_libros.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Libros Stephen King'),
      ),
      body: Center(
        child: listLibros(),
      ),
    );
  }
}
