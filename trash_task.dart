import 'dart:convert';

import 'package:http/http.dart';

import 'models/post_model.dart';

void main(List<String> args) async {
  Uri uri = Uri.parse('https://dummyjson.com/posts/1');

  Response response = await delete(uri);

  print(response.body);
}
