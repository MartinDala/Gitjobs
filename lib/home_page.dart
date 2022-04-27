import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_jobs/pages/splash_screen.dart';
import 'package:git_jobs/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.routes,
      initialRoute: SplashScreen.routeName,
    );
  }
}
