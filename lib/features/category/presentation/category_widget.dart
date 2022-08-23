import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dishes_mobile/features/category/category.dart';

Widget buildCategoryPage() {
  return BlocBuilder<CategoryBloc, CategoryState>(
    builder: (context, CategoryState state) {
      print('STATE CATEGORY: ${state.status}');
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Page Account',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
