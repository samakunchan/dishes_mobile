import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  final String title;

  const SplashPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(
              height: 8,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
