import 'package:flutter/material.dart';

import 'package:dishes_mobile/search/presentation/search_page.dart';


class Routes {
  static const String search = '/search';
  static const String login = '/login';
  static const String register = '/register';
  static const String admin = '/admin';
  static const String adminStats = '/admin/stats';

  Route<dynamic> generateRoute(RouteSettings settings) {
    final List<String> parametrizedName =
        settings.name?.split('?') ?? <String>[];
    final name = (parametrizedName.isNotEmpty)
        ? parametrizedName[0]
        : settings.name ?? '';
    switch (name) {
      case search:
        return PageRouteBuilder<SearchPage>(
          settings: settings,
          pageBuilder: (_, __, ___) => const SearchPage(),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No path for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

