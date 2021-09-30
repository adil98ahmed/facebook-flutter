import 'package:facebook/bloc/bloc.dart';
import 'package:facebook/data_model_service/userModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Comment extends StatelessWidget {
  final TextEditingController controller;
  final int indexOfUser;
  const Comment({Key key, this.controller, this.indexOfUser}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        width: MediaQuery.of(context).size.width,
        decoration: (kIsWeb)
            ? BoxDecoration(borderRadius: BorderRadius.circular(15))
            : BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('images/usersImages/1.jpg'))),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 40,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.emoji_emotions,
                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              size: 20,
                            ),
                          ),
                          BlocBuilder<MyBloc, List<User>>(
                            builder: (context, state) {
                              return Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: IconButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    if (controller.text != "") {
                                      context.read<MyBloc>().addComment(
                                          "1", controller.text, indexOfUser);
                                    }
                                  },
                                  color: Colors.grey[800],
                                  icon: Icon(
                                    Icons.publish_sharp,
                                    size: 20,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      hintText: "write your comment..",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
