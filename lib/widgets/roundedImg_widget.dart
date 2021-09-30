import 'package:flutter/material.dart';

class RoundedImg extends StatelessWidget {
  final imgSrc;
  const RoundedImg({Key key, this.imgSrc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image(
        height: 40,
        width: 40,
        fit: BoxFit.cover,
        image: AssetImage(
          imgSrc,
        ),
      ),
    );
  }
}
