import 'package:flutter/material.dart';

class AppBarAction extends StatelessWidget {
  final icon, notification;
  const AppBarAction({this.icon, this.notification}) : super();

  @override
  Widget build(BuildContext context) {
    return (notification != true)
        ? Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Container(
              width: 30,
              height: 30,
              child: FloatingActionButton(
                elevation: 0.1,
                onPressed: () {},
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 16,
                ),
                backgroundColor: Colors.white38,
              ),
            ),
          )
        : Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Container(
                  width: 35,
                  height: 35,
                  child: FloatingActionButton(
                    elevation: 0.1,
                    backgroundColor: Color(0xF2F3F5),
                    onPressed: () {},
                    child: Icon(
                      icon,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 2,
                  right: 5,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    width: 20,
                    height: 20,
                    child: Text(
                      '4',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ))
            ],
          );
  }
}
