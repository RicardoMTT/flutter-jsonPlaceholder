import 'package:formulario/src/models/imagen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ImagenesProvider {
  var url = 'http://jsonplaceholder.typicode.com/photos';

  Future<List<Imagen>> getImages() async {
    var response = await http.get(url);
    var jsonResponse = convert.jsonDecode(response.body);
    var imagenes = Imagen.fromJsonList(jsonResponse);
    return imagenes.itemImages;
  }
}
