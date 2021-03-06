import 'package:facebook/sections/add_post.dart';
import 'package:facebook/sections/left_Pannel.dart';
import 'package:facebook/sections/posts.dart';
import 'package:facebook/sections/reels.dart';
import 'package:facebook/sections/rightPannel.dart';
import 'package:flutter/material.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * .3,
                child: LeftPannel(),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .50,
                  child: Reels(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .43,
                  child: AddPost(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .43,
                  child: Posts(),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * .3,
                child: RightPannel(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
