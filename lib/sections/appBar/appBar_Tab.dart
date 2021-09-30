import 'package:facebook/sections/left_Pannel.dart';
import 'package:facebook/views/tab.dart';
import 'package:facebook/widgets/appbar_actions_widget.dart';
import 'package:facebook/widgets/roundedImg_widget.dart';
import 'package:facebook/widgets/tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarTab extends StatefulWidget {
  const AppBarTab({Key key}) : super(key: key);

  @override
  _AppBarTabState createState() => _AppBarTabState();
}

class _AppBarTabState extends State<AppBarTab>
    with SingleTickerProviderStateMixin {
  @override
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 5);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(FontAwesomeIcons.facebook, color: Colors.blue, size: 35),
                Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                    decoration: BoxDecoration(
                        color: Colors.black12, shape: BoxShape.circle),
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
              ],
            ),
            Expanded(
              child: Container(
                height: 55,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .05),
                width: MediaQuery.of(context).size.width * .5,
                child: TabBar(controller: _tabController, tabs: [
                  TabBarItem(
                    icon: Icons.home,
                    color: _tabController.index == 0
                        ? Colors.blue
                        : Colors.black54,
                  ),
                  TabBarItem(
                    icon: Icons.people_sharp,
                    color: _tabController.index == 1
                        ? Colors.blue
                        : Colors.black54,
                  ),
                  TabBarItem(
                    icon: Icons.video_library,
                    color: _tabController.index == 2
                        ? Colors.blue
                        : Colors.black54,
                  ),
                  TabBarItem(
                    icon: Icons.business_center_outlined,
                    color: _tabController.index == 3
                        ? Colors.blue
                        : Colors.black54,
                  ),
                  TabBarItem(
                    icon: Icons.menu,
                    color: _tabController.index == 4
                        ? Colors.blue
                        : Colors.black54,
                  ),
                ]),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  child: RoundedImg(
                    imgSrc: "images/usersImages/1.jpg",
                  ),
                ),
                Text(
                  "  Adel ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
                AppBarAction(
                  icon: Icons.add_outlined,
                ),
                AppBarAction(
                  icon: FontAwesomeIcons.facebookMessenger,
                  notification: true,
                ),
                AppBarAction(
                  icon: Icons.notifications_sharp,
                ),
                AppBarAction(
                  icon: Icons.arrow_drop_down,
                ),
              ],
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomeTab(),
          Center(child: Text('Adel Ahmed')),
          Center(child: Text('Adel Ahmed')),
          Center(child: Text('Adel Ahmed')),
          LeftPannel()
        ],
      ),
    );
  }
}
