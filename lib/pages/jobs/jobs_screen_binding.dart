import 'package:get/get.dart';
import 'package:git_jobs/pages/jobs/jobs_screen_controller.dart';

class JobsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobsScreenController());
  }
}
