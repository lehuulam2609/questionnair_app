import 'package:get/get.dart';
import 'package:questionnair_app/views/questionnair/questionnair_controller.dart';

class QuestionnairBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuestionnairController>(
      () => QuestionnairController(),
    );
  }
}
