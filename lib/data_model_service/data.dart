import 'package:facebook/data_model_service/userModel.dart';

List<User> users = [
  User(
      userName: "Adel Ahmed",
      id: "1",
      photo: "images/usersImages/1.jpg",
      post: Post(
          photos: [
            'images/postsImages/1.jpg',
            'images/postsImages/2.jpg',
            'images/postsImages/3.jpg'
          ],
          caption:
              'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
          comments: [Comments(comment: "Good idea", uId: "3")])),
  User(
    userName: "Ahemd Hashem",
    id: "2",
    photo: "images/usersImages/2.jpg",
    post: Post(
        photos: ['images/postsImages/4.jpg'],
        caption:
            'Aldus PageMaker including versions of Lorem Ipsum PageMaker including',
        comments: [Comments(comment: "Bad idea", uId: "4")]),
  ),
  User(
    userName: "Nour Ahmed",
    id: "3",
    photo: "images/usersImages/3.jpg",
    post: Post(
        photos: [],
        caption:
            'including versions of Lorem Ipsum including versions of Lorem Ipsum',
        comments: [
          Comments(comment: "I Liked idea", uId: "3"),
          Comments(comment: "I done't Liked idea", uId: "5")
        ]),
  ),
  User(
    userName: "Moutaz Gaber",
    id: "4",
    photo: "images/usersImages/4.jpg",
    post: Post(
        photos: ['images/postsImages/5.jpg', 'images/postsImages/6.jpg'],
        comments: []),
  ),
  User(
    userName: "Omar Gamal",
    id: "5",
    photo: "images/usersImages/5.jpg",
    post: Post(
        photos: [],
        caption:
            'Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        comments: []),
  ),
  User(
    userName: "Somaya Sayed",
    id: "6",
    photo: "images/usersImages/7.jpg",
    post: Post(
        photos: ['images/postsImages/7.jpg'],
        caption:
            'centuries, but also the leap into electronic typesetting, remaining ',
        comments: [Comments(comment: "Beautiful", uId: "3")]),
  ),
];
