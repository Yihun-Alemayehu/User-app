// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Post {
  final String post;

  Post({
    required this.post,
  });

  Post copyWith({
    String? post,
  }) {
    return Post(
      post: post ?? this.post,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'post': post,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      post: map['post'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Post(post: $post)';

  @override
  bool operator ==(covariant Post other) {
    if (identical(this, other)) return true;
  
    return 
      other.post == post;
  }

  @override
  int get hashCode => post.hashCode;
}
