import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dishes_mobile/app_view.dart';
import 'package:dishes_mobile/search/profile.dart';


class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.searchRepository,
  }) : super(key: key);
  final SearchRepository searchRepository;
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: searchRepository,
      child: BlocProvider(
        create: (_) => SearchBloc(
          searchRepository: searchRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}
