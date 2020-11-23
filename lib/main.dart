import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'Home.dart';
import './redux/store.dart';

void main() {
  runApp(StoreProvider(store: store, child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}
