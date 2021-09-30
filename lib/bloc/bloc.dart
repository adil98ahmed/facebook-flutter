import 'dart:async';

import 'package:facebook/data_model_service/service.dart';
import 'package:facebook/data_model_service/userModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Events { start, addComment }

class MyBloc extends Bloc<Events, List<User>> {
  Service service = Service();
  List<User> users = [];
  int counter = 0;
  Timer timer;
  Comments commentInfo = Comments();
  MyBloc() : super([]) {
    users = service.getUsers();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (counter < 5) {
        counter++;
      } else {
        add(Events.start);
        timer.cancel();
      }
    });
  }

  addComment(String id, String comment, int indexOfUser) {
    this.commentInfo.comment = comment;
    this.commentInfo.uId = id;
    users[indexOfUser].post.comments = [
      ...users[indexOfUser].post.comments,
      commentInfo
    ];
    add(Events.addComment);
  }

  mapEventToState(Events event) async* {
    if (event == Events.start) {
      yield users;
    } else if (event == Events.addComment) {
      yield [...users];
    }
  }
}
