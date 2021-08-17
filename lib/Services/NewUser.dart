import 'package:finalproject/Models/User.dart';
import 'package:dio/dio.dart';

class NewUser {
  String baseUrl = 'https://jsonplaceholder.typicode.com/';
  String userService = 'users';

  Future<List<User>> getUser() async {
    Response response = await Dio().get('$baseUrl$userService');
    var data = response.data;
    print(data);
    List<User> myUser = [];
    data.forEach((e) {
      myUser.add(User.fromJson(e));
    });
    return myUser;
  }
}
