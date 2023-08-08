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
  int userId;
  int reactions;

  Post({
    required this.id,
    required this.title,
    required this.userId,
    required this.reactions,
  });

  factory Post.fromJson(Map<String, Object?> json) {
    return Post(
      id: json['id'] as int,
      title: json['title'] as String,
      userId: json['userId'] as int,
      reactions: json['reactions'] as int,
    );
  }
}
