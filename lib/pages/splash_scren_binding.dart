import 'package:get/get.dart';
import 'package:git_jobs/pages/splash_screen_controller.dart';

class SplashScrenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
  }
}
