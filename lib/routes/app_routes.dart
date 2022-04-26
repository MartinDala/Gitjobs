import 'imports_pages.dart';

abstract class AppRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: SplashScreen.routeName,
      page: () => const SplashScreen(),
      binding: SplashScrenBinding(),
    )
  ];
}
