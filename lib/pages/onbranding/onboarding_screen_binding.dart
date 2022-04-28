import 'package:get/get.dart';
import 'package:git_jobs/pages/onbranding/onboarding_screen_controller.dart';

class OnBoardingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingScreenController());
  }
}
