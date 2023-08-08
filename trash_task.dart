import 'dart:convert';

import 'package:http/http.dart';

import 'models/post_model.dart';

void main(List<String> args) async {
  Uri uri = Uri.parse('https://dummyjson.com/posts/add');

  Post postNew = Post(
    id: 123,
    title: 'new',
    body: 'new body',
    userId: 5,
    tags: ['love'],
    reactions: 1,
  );

  Response response = await post(uri,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(postNew.toJson()));

  print(response.body);
}
