import 'package:flutter/material.dart';

class RightPannelItem extends StatelessWidget {
  final img, name;
  const RightPannelItem({this.img, this.name}) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Row(
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
            child: Stack(
              children: [
                Positioned(
                    top: 27,
                    right: 3,
                    child: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 8,
                      ),
                    ))
              ],
            ),
          ),
          Text('  $name'),
        ],
      ),
    );
  }
}
