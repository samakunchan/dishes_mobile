import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dishes_mobile/app_view.dart';
import 'features/features.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<HomeBloc>(
          create: (_) => HomeBloc(homeRepository: HomeRepository())
        ),
        BlocProvider<SearchBloc>(
          create: (_) => SearchBloc(searchRepository: SearchRepository())
        ),
        BlocProvider<CategoryBloc>(
          create: (_) => CategoryBloc(categoryRepository: CategoryRepository())
        ),
        BlocProvider<AccountBloc>(
          create: (_) => AccountBloc(accountRepository: AccountRepository())
        )
      ],
      child: const AppView()
    );
  }
}
