import 'package:facebook/sections/add_post.dart';
import 'package:facebook/sections/posts.dart';
import 'package:facebook/sections/reels.dart';
import 'package:flutter/material.dart';

class HomeMob extends StatelessWidget {
  const HomeMob({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          0, 0, 0, MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Container(
          color: Colors.black26,
          child: Column(
            children: [AddPost(), Reels(), Posts()],
          ),
        ),
      ),
    );
  }
}
