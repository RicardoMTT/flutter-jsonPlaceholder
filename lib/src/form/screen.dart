import 'package:flutter/material.dart';

class FormularioScreen extends StatelessWidget {
  final title;
  const FormularioScreen({Key key, this.title = 'Titulo por defecto'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
        leading: Icon(Icons.format_align_center),
      ),
      body: Column(
        children: [TextField()],
      ),
    );
  }
}
