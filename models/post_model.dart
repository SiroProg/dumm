// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PostModel {
  List<Post> posts;
  int total;
  int skip;
  int limit;

  PostModel({
    required this.posts,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory PostModel.fromJson(Map<String, Object?> json) {
    return PostModel(
      posts: (json['posts'] as List).map((e) => Post.fromJson(e)).toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );
  }
}

class Post {
  int id;
  String title;
  String body;
  int userId;
  List tags;
  int reactions;

  Post({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
    required this.tags,
    required this.reactions,
  });

  factory Post.fromJson(Map<String, Object?> json) {
    return Post(
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
      userId: json['userId'] as int,
      reactions: json['reactions'] as int,
      tags: List.from(
        (json['tags'] as List).toList(),
      ),
    );
  }

  Map<String, Object?> toJson() {
    return <String, Object?>{
      'id': id,
      'title': title,
      'body': body,
      'userId': userId,
      'tags': tags,
      'reactions': reactions,
    };
  }
}
