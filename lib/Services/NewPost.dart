import 'package:finalproject/Models/Post.dart';
import 'package:dio/dio.dart';

class NewPost {
  String baseUrl = 'https://jsonplaceholder.typicode.com/';
  String post = 'posts';

  Future<List<Post>> getPost() async {
    Response response = await Dio().get('$baseUrl$post');
    var data = response.data;
    print(data);
    List<Post> myPost = [];
    data.forEach((e) {
      myPost.add(Post.fromJson(e));
    });

    // data.map((e) {
    //   myPost.add(Post.fromJson(e));
    // });
    return myPost;
  }
}
