import 'package:cristianhenriquez_proyecto/domain/libros.dart';
import 'package:cristianhenriquez_proyecto/models/libros_read_file.dart';
// import 'package:cristianhenriquez_proyecto/widgets/items_libros.dart';
import 'package:flutter/material.dart';

Widget listLibros() {
  return FutureBuilder(
      future: librosReadFile.getLibros(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              Libros libro = snapshot.data![index];
              return GestureDetector(
                onTap: () {
                  _mostrarDetalleLibros(context, libro);
                },
                child: ListTile(
                  title: Text(libro.data.first.title),
                  subtitle: Text(libro.data.first.year.toString()),
                ),
              );
            },
          );
        } else {
          return const CircularProgressIndicator();
        }
      });
}

void _mostrarDetalleLibros(BuildContext context, Libros libro) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(libro.data.first.villains.first.name),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('ISBN: ${libro.data.first.isbn}'),
            Text('Pages: ${libro.data.first.pages}'),
            // Add more fields as needed
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}
