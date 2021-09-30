class User {
  String userName;
  String id;
  String photo;
  Post post;
  User({this.id, this.userName, this.photo, this.post});
}

class Post {
  String caption;
  List<String> photos;
  List<Comments> comments;
  Post({this.caption, this.photos, this.comments});
}

class Comments {
  String uId;
  String comment;
  Comments({this.uId, this.comment});
}
