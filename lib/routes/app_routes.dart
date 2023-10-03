import 'package:flutter/material.dart';
import 'package:la_comer/features/home/page/home_page.dart';
import 'package:la_comer/features/login/page/login_page.dart';

part 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.login: (context) => const LoginPage(),
    Routes.home: (context) => const Homepage(),
  };
}
