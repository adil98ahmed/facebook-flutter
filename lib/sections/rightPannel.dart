import 'package:facebook/widgets/rightPannel_Item_widget.dart';
import 'package:flutter/material.dart';

class RightPannel extends StatefulWidget {
  const RightPannel({Key key}) : super(key: key);

  @override
  _RightPannelState createState() => _RightPannelState();
}

class _RightPannelState extends State<RightPannel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: MediaQuery.of(context).size.width * .2,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.width * .1, 0, 0, 0),
          child: Scrollbar(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Contacts",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                                child: Icon(
                                  Icons.video_call_rounded,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                                child: Icon(Icons.search_rounded,
                                    color: Colors.black54),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                                child: Icon(Icons.keyboard_control,
                                    color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                for (var i = 0; i < 50; i++)
                  RightPannelItem(
                    name: "Adel Ahmed",
                    img: "images/usersImages/4.jpg",
                  )
              ],
            ),
          )),
    );
  }
}
