import 'package:flutter/material.dart';
import 'file:///D:/Flutter_Projects/task_1/lib/shared/card.dart';
import 'package:task_1/models/postsModel.dart';
import 'package:task_1/services/postsServices.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  bool load=true;
  List<Posts> posts=[];

  CatchPostList()async{
    posts=await PostService().getPosts();
    setState(() {
      load=false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CatchPostList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Posts Screen',style: TextStyle(fontSize: 25),)),
      ),
      body: load? Center(child: CircularProgressIndicator()): ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyCard(title: "${posts[index].title}"),
          );
        },
      ),
    );
  }
}
