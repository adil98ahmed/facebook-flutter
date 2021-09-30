import 'package:facebook/sections/left_Pannel.dart';
import 'package:facebook/views/mob.dart';
import 'package:facebook/widgets/tab_widget.dart';
import 'package:facebook/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarMob extends StatefulWidget {
  const AppBarMob({Key key}) : super(key: key);

  @override
  _AppBarMobState createState() => _AppBarMobState();
}

class _AppBarMobState extends State<AppBarMob>
    with SingleTickerProviderStateMixin {
  @override
  TabController _tabController;
  bool search = false;
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 6);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  void handleSearch() {
    setState(() {
      search = !search;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
        new SliverAppBar(
          forceElevated: true,
          backgroundColor: Colors.white,
          floating: true,
          pinned: true,
          snap: true,
          title: (search == false)
              ? Text(
                  'facebook',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              : Container(),
          actions: (search == false)
              ? [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Container(
                      width: 35,
                      height: 35,
                      child: FloatingActionButton(
                        elevation: 0.1,
                        onPressed: () {
                          handleSearch();
                        },
                        child: Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                          size: 25,
                        ),
                        backgroundColor: Colors.white38,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Container(
                          width: 35,
                          height: 35,
                          child: FloatingActionButton(
                            elevation: 0.1,
                            backgroundColor: Color(0xF2F3F5),
                            onPressed: () {},
                            child: Icon(
                              FontAwesomeIcons.facebookMessenger,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 5,
                          right: 5,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                            width: 20,
                            height: 20,
                            child: Text(
                              '4',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ))
                    ],
                  ),
                ]
              : [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.black),
                            onPressed: handleSearch),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
                            child: Container(
                              height: 40,
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide.none),
                                      filled: true,
                                      enabled: true,
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      hintText: "Search")),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              TabBarItem(
                icon: Icons.home,
                color: _tabController.index == 0 ? Colors.blue : Colors.black54,
              ),
              TabBarItem(
                icon: Icons.people_sharp,
                color: _tabController.index == 1 ? Colors.blue : Colors.black54,
              ),
              TabBarItem(
                icon: Icons.video_library,
                color: _tabController.index == 2 ? Colors.blue : Colors.black54,
              ),
              TabBarItem(
                icon: Icons.business_center_outlined,
                color: _tabController.index == 3 ? Colors.blue : Colors.black54,
              ),
              TabBarItem(
                icon: Icons.notifications_none,
                color: _tabController.index == 4 ? Colors.blue : Colors.black54,
              ),
              TabBarItem(
                icon: Icons.menu,
                color: _tabController.index == 5 ? Colors.blue : Colors.black54,
              ),
            ],
          ),
        )
      ],
      body: TabBarView(controller: _tabController, children: [
        HomeMob(),
        Center(
          child: Text('Adel ahmed'),
        ),
        Center(
          child: Text('Adel ahmed'),
        ),
        Center(
          child: Text('Adel ahmed'),
        ),
        Center(
          child: Text('Adel ahmed'),
        ),
        LeftPannel(),
      ]),
    );
  }
}
