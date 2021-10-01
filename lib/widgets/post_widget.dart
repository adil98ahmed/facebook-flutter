import 'package:facebook/bloc/bloc.dart';
import 'package:facebook/data_model_service/userModel.dart';
import 'package:facebook/widgets/carousal_widger.dart';
import 'package:facebook/widgets/comment.dart';
import 'package:facebook/widgets/postReactions.dart';
import 'package:facebook/widgets/roundedImg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class PostItem extends StatefulWidget {
  final User user;
  final int indexOfUser;
  const PostItem({Key key, this.user, this.indexOfUser}) : super(key: key);

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: (kIsWeb)
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white)
          : BoxDecoration(
              color: Colors.white,
            ),
      margin: EdgeInsets.fromLTRB(0, 13, 0, 0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RoundedImg(
                              imgSrc: widget.user.photo,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.user.userName,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    children: [
                                      Text('1h .'),
                                      Icon(
                                        Icons.public,
                                        color: Colors.grey,
                                        size: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Row(
                  children: [
                    //icons
                    Icon(
                      Icons.keyboard_control,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 5,
                    ),
                    Icon(
                      Icons.close,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: (widget.user.post.caption != null)
                ? Text(widget.user.post.caption)
                : Container(),
          ),
          (widget.user.post.photos.length == 1)
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Image(
                      image: AssetImage(widget.user.post.photos[0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : (widget.user.post.photos.length > 1)
                  ? ImagesCarousal(
                      images: widget.user.post.photos,
                    )
                  : Container(),
          PostReactions(
            numberOfComments: widget.user.post.comments.length,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
            child: BlocBuilder<MyBloc, List<User>>(builder: (context, state) {
              return Column(
                children: [
                  for (var i = 0; i < widget.user.post.comments.length; i++)
                    for (var j = 0; j < state.length; j++)
                      if (widget.user.post.comments[i].uId == state[j].id)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Row(
                            children: [
                              RoundedImg(
                                imgSrc: state[j].photo,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF0F2F5),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        state[j].userName,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        widget.user.post.comments[i].comment,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                ],
              );
            }),
          ),
          Comment(
            controller: TextEditingController(),
            indexOfUser: widget.indexOfUser,
          )
        ],
      ),
    );
  }
}
