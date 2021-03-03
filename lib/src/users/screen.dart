import 'package:flutter/material.dart';
import 'package:formulario/src/providers/users_providers.dart';

class UserScreen extends StatelessWidget {
  final userProvider = new UserProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        title: Text('Usuarios'),
      ),
      body: getUsers(),
    );
  }

  Widget getUsers() {
    return FutureBuilder(
      future: userProvider.getUsers(),
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
          return ListTile(
            title: Text(listado[index].name),
          );
        });
  }
}
