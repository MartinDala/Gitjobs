import 'package:git_jobs/pages/details/details_screen.dart';
import 'package:git_jobs/pages/details/details_screen_binding.dart';
import 'package:git_jobs/pages/home/home_screen.dart';
import 'package:git_jobs/pages/home/home_screen_binding.dart';
import 'package:git_jobs/pages/jobs/jobs_screen.dart';
import 'package:git_jobs/pages/jobs/jobs_screen_binding.dart';
import 'package:git_jobs/pages/login/login_screen.dart';
import 'package:git_jobs/pages/login/login_screen_binding.dart';
import 'package:git_jobs/pages/onbranding/onboarding_screen.dart';
import 'package:git_jobs/pages/onbranding/onboarding_screen_binding.dart';

import 'imports_pages.dart';

abstract class AppRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: SplashScreen.routeName,
      page: () => const SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: HomeScreen.routeName,
      page: () => const HomeScreen(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: LoginScreen.routeName,
      page: () => const LoginScreen(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: JobsScreen.routeName,
      page: () => const JobsScreen(),
      binding: JobsScreenBinding(),
    ),
    GetPage(
      name: DetailsScreen.routeName,
      page: () => const DetailsScreen(),
      binding: DetailsScreenBinding(),
    ),
    GetPage(
      name: OnBoardingScreen.routeName,
      page: () => const OnBoardingScreen(),
      binding: OnBoardingScreenBinding(),
    )
  ];
}
