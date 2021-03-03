import 'package:flutter/material.dart';
import 'package:formulario/src/models/imagen.dart';
import 'package:formulario/src/providers/imagenes_providers.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        title: Text('Imagenes'),
      ),
      body: _listarImagenes(),
    );
  }

  _listarImagenes() {
    final imagenesProvider = new ImagenesProvider();
    return FutureBuilder(
      future: imagenesProvider.getImages(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
          return _listaImagenes(snapshot.data);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _listaImagenes(List<Imagen> imagenes) {
    return ListView.builder(
      itemCount: imagenes.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          child: ListTile(
            leading: Image.network(imagenes[index].url),
            title: Text(imagenes[index].title),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
          ),
        );
      },
    );
  }
}
