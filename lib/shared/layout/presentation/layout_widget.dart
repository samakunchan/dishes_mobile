import 'package:dishes_mobile/shared/shared.dart';
import 'package:flutter/material.dart';


class LayoutWidget extends StatelessWidget {
  final Widget content;
  final String title;

  const LayoutWidget({Key? key, required this.content, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
      return buildWidgetForMobile(context);
    });
  }

  Widget buildWidgetForMobile(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: content
          ),
          const FooterWidget(),
        ],
      ),
    );
  }
}
