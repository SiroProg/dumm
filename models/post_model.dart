import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostModel {
  List<Post> comments;
  int total;
  int skip;
  int limit;

  PostModel({
    required this.comments,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory PostModel.fromJson(Map<String, Object?> json) {
    return PostModel(
      comments: (json['comments'] as List).map((e) => Post.fromJson(e)).toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );
  }
}

class Post {
  int id;
  String body;
  int postId;
  User user;

  Post(
      {required this.id,
      required this.body,
      required this.postId,
      required this.user});

  factory Post.fromJson(Map<String, Object?> json) {
    return Post(
        id: json['id'] as int,
        body: json['body'] as String,
        postId: json['postId'] as int,
        user: User.fromMap(json['user'] as Map<String, Object?>));
  }
}

class User {
  int id;
  String username;

  User({
    required this.id,
    required this.username,
  });

  factory User.fromMap(Map<String, Object?> json) {
    return User(
      id: json['id'] as int,
      username: json['username'] as String,
    );
  }
}
