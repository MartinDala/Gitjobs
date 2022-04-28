import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_jobs/pages/splash/splash_screen.dart';
import 'package:git_jobs/pages/splash/splash_scren_binding.dart';
import 'package:git_jobs/routes/app_routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      initialBinding: SplashScreenBinding(),
      defaultTransition: Transition.fade,
      home: const SplashScreen(),
      locale: const Locale('pt', 'BR'),
    );
  }
}
