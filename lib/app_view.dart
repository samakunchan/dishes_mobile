import 'package:flutter/material.dart';

import 'app/app.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dishes mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppWidget(),
    );
  }
}
