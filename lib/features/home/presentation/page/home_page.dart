import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dishes_mobile/features/home/home.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late double _width = 150;
  late double _height = 150;
  late double _width1 = 150;
  late double _height1 = 150;
  late final Color? _color = Colors.amber[800];
  late Color? _color1 = Colors.amber[800];
  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, HomeState state) {
        print('STATE HOME: ${state.status}');
        return Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <GestureDetector>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      final random = Random();
                      _width = random.nextInt(800).toDouble() + 100;
                      _height = random.nextInt(800).toDouble() + 50;
                    });
                  },
                  child: Center(
                    child: AnimatedContainer(
                      width: _width,
                      height: _height,
                      decoration: BoxDecoration(
                        color: _color,
                        borderRadius: _borderRadius,
                      ),
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      child: const Center(
                        child: Text(
                          'Acceuil',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      final random = Random();
                      _width1 = random.nextInt(800).toDouble() + 100;
                      _height1 = random.nextInt(800).toDouble() + 50;

                      _color1 = Color.fromRGBO(
                        random.nextInt(256),
                        random.nextInt(256),
                        random.nextInt(256),
                        1,
                      );
                    });
                  },
                  child: Center(
                    child: AnimatedContainer(
                      width: _width1,
                      height: _height1,
                      decoration: BoxDecoration(
                        color: _color1,
                        borderRadius: _borderRadius,
                      ),
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      child: const Center(
                        child: Text(
                          'Item 1',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });
  }

}

