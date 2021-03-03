import 'dart:convert' as convert;
import 'package:formulario/src/models/user.dart';
import 'package:http/http.dart' as http;

class UserProvider {
  var url = 'https://jsonplaceholder.typicode.com/users';
  Future<List<User>> getUsers() async {
    var response = await http.get(url);
    var jsonResponse = convert.jsonDecode(response.body);
    var users = User.fromJsonList(jsonResponse);
    return users.items;
  }
}

//  Future<Post> getPost() async {
//     String url = 'https://jsonplaceholder.typicode.com/posts';

//     final response = await http.get('$url/1');
//     return postFromJson(response.body);
//   }
