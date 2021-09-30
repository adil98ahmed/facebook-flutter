import 'package:facebook/widgets/roundedImg_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Reels extends StatelessWidget {
  const Reels({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: (kIsWeb) ? Colors.transparent : Colors.white,
      margin: EdgeInsets.fromLTRB(0, 13, 0, 0),
      height: (MediaQuery.of(context).size.width < 576 &&
              MediaQuery.of(context).size.width < 768)
          ? 208
          : (MediaQuery.of(context).size.width < 768 &&
                  MediaQuery.of(context).size.width < 992)
              ? 198
              : 198,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) => Container(
          alignment: Alignment.topLeft,
          width: (MediaQuery.of(context).size.width > 576 &&
                  MediaQuery.of(context).size.width < 768)
              ? 107
              : (MediaQuery.of(context).size.width > 768 &&
                      MediaQuery.of(context).size.width < 992)
                  ? 112
                  : 112,
          margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/usersImages/2.jpg')),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: EdgeInsets.fromLTRB(3, 3, 0, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 2.5)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: RoundedImg(
                      imgSrc: "images/usersImages/1.jpg",
                    ),
                  ),
                ),
                Text(
                  'User Name',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
