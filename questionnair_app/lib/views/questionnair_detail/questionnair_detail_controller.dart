
import 'package:get/get.dart';
import 'package:questionnair_app/model/responses/questionnair_model.dart';

class QuestionnairDetailController extends GetxController {
  Rx<List<QuestionnairModel>> listQuestionnairs = Rx<List<QuestionnairModel>>([]);

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      listQuestionnairs.value = Get.arguments;
    }
  }
}
