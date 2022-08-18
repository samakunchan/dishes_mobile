import 'package:flutter/material.dart';
import 'package:dishes_mobile/search/presentation/search_page.dart';

import 'core/core.dart';

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dishes_mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SearchPage(),
      onGenerateRoute: Routes().generateRoute,
    );
  }
}
