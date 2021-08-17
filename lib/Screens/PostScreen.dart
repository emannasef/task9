import 'package:finalproject/Models/Post.dart';
import 'package:finalproject/Services/NewPost.dart';
import 'package:flutter/material.dart';
import 'package:finalproject/Widgets/MyListView.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);
  static const String id = 'PostScreen';

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  bool isLoading = true;
  List<Post> anyName = [];

  Future myPost() async {
    anyName = await NewPost().getPost();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    myPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
          centerTitle: true,
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : MyListView(title: anyName));
  }
}
