import 'package:dishes_mobile/features/account/account.dart';
import 'package:dishes_mobile/features/category/category.dart';
import 'package:dishes_mobile/features/home/home.dart';
import 'package:dishes_mobile/features/search/search.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);
  static final List<Widget> _pagePresentation = <Widget>[
    const HomePage(),
    const SearchPage(),
    const CategoriesPage(),
    const AccountPage()
  ];

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (Widget child, Animation<double> animation) {
          print('_selectedIndex: $_selectedIndex');
          print('AppWidget._pagePresentation.length: ${AppWidget._pagePresentation.length}');
          return (_selectedIndex + 1) == AppWidget._pagePresentation.length ? SlideTransition(
            textDirection: TextDirection.rtl,
            position: Tween<Offset>(
              begin: const Offset(-1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ) : ScaleTransition(
              scale: animation,
              child: child
          );
        },
        child: AppWidget._pagePresentation[_selectedIndex],
      ),
      // body: AppWidget._pagePresentation[_selectedIndex],
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
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

