import 'package:facebook/bloc/bloc.dart';
import 'package:facebook/screens/home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyBloc(),
      child: MaterialApp(
        home: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Scaffold(resizeToAvoidBottomInset: false, body: Home())),
      ),
    );
  }
}
