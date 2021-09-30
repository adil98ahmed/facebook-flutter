import 'package:facebook/bloc/bloc.dart';
import 'package:facebook/data_model_service/userModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostReactions extends StatelessWidget {
  final int numberOfComments;
  const PostReactions({Key key, this.numberOfComments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 23,
                    width: 23,
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: Icon(
                      Icons.thumb_up,
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    ' 2',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
              Container(
                  child: (numberOfComments > 0)
                      ? Text(
                          '$numberOfComments.comments',
                          style: TextStyle(color: Colors.black54, fontSize: 13),
                        )
                      : Text('')),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          child: Container(
            height: .3,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BlocBuilder<MyBloc, List<User>>(
                builder: (context, state) => Container(
                  child: GestureDetector(
                    onTap: () {
                      context.read<MyBloc>().add(Events.start);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Colors.black54,
                          size: 18,
                        ),
                        Text(
                          ' Like',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.comment,
                      color: Colors.black54,
                      size: 18,
                    ),
                    Text(
                      ' Comments',
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.black54,
                      size: 18,
                    ),
                    Text(
                      ' Share',
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
          child: Container(
            height: .3,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
