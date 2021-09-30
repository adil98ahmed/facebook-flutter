import 'package:facebook/widgets/leftPannel_Item_widget.dart';
import 'package:flutter/material.dart';

class LeftPannel extends StatelessWidget {
  const LeftPannel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .2,
      //margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      height: MediaQuery.of(context).size.height,
      child: Scrollbar(
        child: ListView(
          children: [
            LeftPannelItem(
              name: "Adel Ahmed",
              img: "images/usersImages/1.jpg",
              icon: null,
              type: "settings",
            ),
            LeftPannelItem(
              name: "Friends",
              img: null,
              icon: Icons.people,
              type: "settings",
              color: Colors.blue,
            ),
            LeftPannelItem(
              name: "Groups",
              img: null,
              icon: Icons.business_center_rounded,
              type: "settings",
              color: Colors.brown,
            ),
            LeftPannelItem(
              name: "Marketplace",
              img: null,
              icon: Icons.group_add_sharp,
              type: "settings",
              color: Colors.blue[800],
            ),
            LeftPannelItem(
              name: "Watch",
              img: null,
              icon: Icons.house_siding,
              type: "settings",
              color: Colors.blue[500],
            ),
            LeftPannelItem(
              name: "Memories",
              img: null,
              icon: Icons.ondemand_video,
              type: "settings",
              color: Colors.blue[700],
            ),
            LeftPannelItem(
              name: "See More",
              img: null,
              icon: Icons.arrow_drop_down_circle,
              type: "settings",
              color: Colors.grey[500],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Container(
                height: .3,
                width: MediaQuery.of(context).size.width * .2,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                "Your Shortcuts",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
              ),
            ),
            LeftPannelItem(
              name: "Group 1",
              img: "images/postsImages/1.jpg",
              icon: null,
              type: "shortcut",
            ),
            LeftPannelItem(
              name: "Group 2",
              img: "images/postsImages/1.jpg",
              icon: null,
              type: "shortcut",
            ),
            LeftPannelItem(
              name: "Group 3",
              img: "images/postsImages/1.jpg",
              icon: null,
              type: "shortcut",
            ),
            LeftPannelItem(
              name: "Group 4",
              img: "images/postsImages/1.jpg",
              icon: null,
              type: "shortcut",
            ),
            LeftPannelItem(
              name: "Group 5",
              img: "images/postsImages/1.jpg",
              icon: null,
              type: "shortcut",
            ),
            LeftPannelItem(
              name: "Group 6",
              img: "images/postsImages/1.jpg",
              icon: null,
              type: "shortcut",
            ),
            LeftPannelItem(
              name: "Group 7",
              img: "images/postsImages/1.jpg",
              icon: null,
              type: "shortcut",
            ),
            LeftPannelItem(
              name: "Group 8",
              img: "images/postsImages/1.jpg",
              icon: null,
              type: "shortcut",
            ),
            LeftPannelItem(
              name: "Group 9",
              img: "images/postsImages/1.jpg",
              icon: null,
              type: "shortcut",
            ),
          ],
        ),
      ),
    );
  }
}
