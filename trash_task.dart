import 'dart:convert';

import 'package:http/http.dart';

import 'models/post_model.dart';

void main(List<String> args) async {
  Uri uri = Uri.parse('https://dummyjson.com/posts');

  Response response = await get(uri);

  PostModel postModel = PostModel.fromJson(jsonDecode(response.body));
  
  print(postModel.posts[0].title);
}
