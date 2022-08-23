import 'package:dishes_mobile/features/account/account.dart';
import 'package:dishes_mobile/features/category/category.dart';
import 'package:dishes_mobile/features/home/home.dart';
import 'package:dishes_mobile/features/search/presentation/search_widget.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);
  static final List<Widget> _widgetPresentation = <Widget>[
    buildHomePage(),
    buildSearchPage(),
    buildCategoryPage(),
    buildAccountPage()
  ];

  @override
  State<AppWidget> createState() => _AppWidget1State();
}

class _AppWidget1State extends State<AppWidget> {
  late int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            // child: widget.content
            child: AppWidget._widgetPresentation[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home, color: Colors.amber[800],),
            icon: const Icon(Icons.home, color: Colors.grey),
            label: 'Accueil',
            tooltip: 'Menu avec tout les choix',
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.search, color: Colors.amber[800],),
              icon: const Icon(Icons.search, color: Colors.grey,),
              label: 'Parcourir',
              tooltip: 'Rechercher un plat particulier'
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.filter, color: Colors.amber[800],),
              icon: const Icon(Icons.filter, color: Colors.grey,),
              label: 'Filtrer',
              tooltip: 'Recherchez parmis nos catégories'
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.account_circle_rounded, color: Colors.amber[800],),
              icon: const Icon(Icons.account_circle_rounded, color: Colors.grey,),
              label: 'Compte',
              tooltip: 'Acceder à votre compte'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          print('_selectedIndex: ${_selectedIndex}');
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

