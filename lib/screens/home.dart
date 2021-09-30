import 'package:facebook/sections/appBar/appBar_Mob.dart';
import 'package:facebook/sections/appBar/appBar_Tab.dart';
import 'package:facebook/sections/appBar/appBar_web.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (kIsWeb && MediaQuery.of(context).size.width > 992)
        ? AppBarWeb()
        : (kIsWeb &&
                MediaQuery.of(context).size.width > 768 &&
                MediaQuery.of(context).size.width < 992)
            ? AppBarTab()
            : AppBarMob();
  }
}
