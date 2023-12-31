import 'package:get/get.dart';
import 'package:questionnair_app/views/questionnair_detail/questionnair_detail_controller.dart';

class QuestionnairDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuestionnairDetailController>(
      () => QuestionnairDetailController(),
    );
  }
}
