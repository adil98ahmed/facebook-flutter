import 'package:flutter/material.dart';

class WaitScreen extends StatelessWidget {
  const WaitScreen() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .5,
      color: Colors.grey[400],
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Wait...',
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
