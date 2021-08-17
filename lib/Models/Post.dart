class Post {
  int? userId;
  int? id;
  String? body;
  String? title;

  Post({this.id, this.userId, this.body, this.title});

  factory Post.fromJson(Map<String, dynamic> json) => Post(
      id: json["id"],
      userId: json['userId'],
      title: json['title'],
      body: json['body']);
}
