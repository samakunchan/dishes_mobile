import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:dishes_mobile/my_app.dart';
import 'package:dishes_mobile/search/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(
    MyApp(
      searchRepository: SearchRepository(),
    )
  );
}
