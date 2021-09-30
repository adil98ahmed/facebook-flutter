import 'package:facebook/widgets/roundedImg_widget.dart';
import 'package:facebook/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class AddPost extends StatelessWidget {
  const AddPost({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 15, 5, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedImg(
                  imgSrc: "images/usersImages/1.jpg",
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextFieldWidget(
                      border: false,
                      fill: (kIsWeb)
                          ? true
                          : (!kIsWeb && MediaQuery.of(context).size.width > 768)
                              ? true
                              : false,
                      hintText: "What's in your mind",
                      height: 40.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: .5,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.grey, width: .5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.video_call_rounded,
                            color: Colors.red, size: 25),
                        Text((!kIsWeb) ? " Live " : " Live video",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.grey, width: .5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.photo_library,
                            color: Colors.green, size: 25),
                        Text((!kIsWeb) ? " Video" : "Photo/Video",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon((!kIsWeb) ? Icons.video_call_rounded : Icons.mood,
                            color:
                                (!kIsWeb) ? Colors.purple : Colors.yellow[800],
                            size: 25),
                        Text((!kIsWeb) ? " Room" : "Feeling/Activity",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      decoration: (kIsWeb)
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white)
          : BoxDecoration(),
    );
  }
}
