import 'package:flutter/material.dart';
import 'package:formulario/src/providers/posts_providers.dart';

class PostScreen extends StatelessWidget {
  final postProvider = new PostProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        title: Text('Post'),
      ),
      body: getPost(),
    );
  }

  Widget getPost() {
    return FutureBuilder(
      future: postProvider.getPost(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data);

          return _listaPersonas(snapshot.data);
        } else {
          print('No hay data');
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _listaPersonas(List<dynamic> listado) {
    return ListView.builder(
        itemCount: listado.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: ListTile(
              onTap: () {
                print(index);
              },
              title: Text(listado[index].title),
              leading: Icon(Icons.person_pin_circle),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),
          );
        });
  }
}
