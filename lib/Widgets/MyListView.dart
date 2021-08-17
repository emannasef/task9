import 'package:flutter/material.dart';
import 'package:finalproject/Models/Post.dart';

class MyListView extends StatelessWidget {
  const MyListView({
    Key? key,
    required this.title,
  }) : super(key: key);

  final List<Post> title;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          child: Text('${title[index].body}'),
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 10.0,
      ),
      itemCount: title.length,
    );
  }
}
