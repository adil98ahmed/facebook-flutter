import 'package:facebook/bloc/bloc.dart';
import 'package:facebook/data_model_service/userModel.dart';
import 'package:facebook/sections/wait.dart';
import 'package:facebook/widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Posts extends StatelessWidget {
  const Posts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyBloc, List<User>>(
      builder: (context, state) => (state.length > 0)
          ? Container(
              child: Column(children: [
                for (var i = 0; i < state.length; i++)
                  (kIsWeb)
                      ? Card(
                          margin: EdgeInsets.symmetric(vertical: 7),
                          elevation: 4,
                          child: PostItem(
                            user: state[i],
                            indexOfUser: i,
                          ),
                        )
                      : Container(
                          child: PostItem(
                            user: state[i],
                            indexOfUser: i,
                          ),
                        ),
              ]),
            )
          : WaitScreen(),
    );
  }
}
