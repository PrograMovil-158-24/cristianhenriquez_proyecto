import 'package:cristianhenriquez_proyecto/models/libros_read_file.dart';
import 'package:cristianhenriquez_proyecto/widgets/items_libros.dart';
import 'package:flutter/material.dart';

Widget listLibros() {
  return FutureBuilder(
      future: librosReadFile.getLibros(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children:[
              Text(
              '${libro.title} (${libro.year})',
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  showVillains = !showVillains;
                });
              },
              child: Text(
                'Villains:',
              ),
            ),
            if (showVillains)
              SizedBox(height: 10.0),
              ListView.builder(
                shrinkWrap: true,
                itemCount: widget.book.villains.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(widget.book.villains[index].name),
                    onTap: () {
                      // Handle villain tap if needed
                    },
                  );
                },
              ),
            ),
            ],
          );
        } else {
          return const CircularProgressIndicator();
        }
      });
}
