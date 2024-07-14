import 'package:flutter/material.dart';
import 'package:test_application/servies/post_service.dart';

class PostDetailScreen extends StatefulWidget {
  final String id;
  const PostDetailScreen({super.key, required this.id});

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  dynamic _post = {};
  @override
  void initState() {
    super.initState();
    PostService.futurePost(widget.id).then((post) {
      setState(() {
        _post = post;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Menu'),
      ),
      body: Container(
        child: Text(_post['title']),
      ),
    );
  }
}
