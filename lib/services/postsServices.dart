import 'package:dio/dio.dart';
import 'package:task_1/models/postsModel.dart';

class PostService {
  String baseUrl = "https://jsonplaceholder.typicode.com/";
  String posts = "posts";

  Future<List<Posts>> getPosts() async {
    List<Posts> postList = [];
    Response response = await new Dio().get("$baseUrl"+"$posts");
    var data = response.data;
    data.forEach((element) {
      Posts post = Posts.fromJson(element);
      postList.add(post);
    });
    return postList;
  }
}