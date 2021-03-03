import 'package:formulario/src/models/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class PostProvider {
  var url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Post>> getPost() async {
    var response = await http.get(url); // Viene en json
    var jsonResponse = convert.jsonDecode(response.body); // Retorna un mapa
    var posts = Post.fromJsonList(jsonResponse);
    return posts.itemsPost;
  }
}
