import 'package:facebook/widgets/roundedImg_widget.dart';
import 'package:flutter/material.dart';

class LeftPannelItem extends StatelessWidget {
  final icon;
  final name;
  final img;
  final type;
  final color;
  const LeftPannelItem({this.icon, this.name, this.img, this.type, this.color})
      : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
      child: Row(
        children: [
          (img != null && type == "settings")
              ? Container(
                  child: RoundedImg(
                    imgSrc: 'images/usersImages/1.jpg',
                  ),
                )
              : (img != null && type == "shortcut")
                  ? Container(
                      height: 25,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(img), fit: BoxFit.fill)))
                  : Container(
                      width: 35,
                      child: Icon(
                        icon,
                        color: color,
                        size: 28,
                      ),
                    ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              '$name ',
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
            ),
          )
        ],
      ),
    );
  }
}
