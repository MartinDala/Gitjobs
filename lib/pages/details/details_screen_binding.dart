import 'package:get/get.dart';
import 'package:git_jobs/pages/details/details_screen_controller.dart';

class DetailsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsScreenController());
  }
}
