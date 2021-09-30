import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class TextFieldWidget extends StatelessWidget {
  final height, hintText, fillColor, border, icon, fill;
  const TextFieldWidget(
      {this.height,
      this.hintText,
      this.fillColor,
      this.border,
      this.icon,
      this.fill})
      : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Color(0xffCCCED2))),
      child: TextField(
        decoration: InputDecoration(
            prefix: Icon(icon),
            filled: fill,
            border: InputBorder.none,
            fillColor: fillColor,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black),
            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, (kIsWeb) ? 15 : 10)),
      ),
    );
  }
}
