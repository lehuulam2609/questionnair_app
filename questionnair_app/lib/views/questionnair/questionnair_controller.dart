import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questionnair_app/model/responses/questionnair_model.dart';
import 'package:questionnair_app/views/questionnair/widget/add_new_question.dart';

class QuestionnairController extends GetxController {
  Rx<List<QuestionnairModel>> listQuestionnairs =
      Rx<List<QuestionnairModel>>([]);

  @override
  void onInit() {
    super.onInit();
  }

  /// Popup Add
  void showAddQuestionnair(BuildContext context) {
    showDialog<dynamic>(
      context: context,
      useRootNavigator: true,
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.4),
      useSafeArea: false,
      builder: (BuildContext ctx) {
        return Dialog(
          insetPadding: const EdgeInsets.all(20.0),
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          child: AddNewQuestion(
            onSubmit: (QuestionnairModel question) {
              listQuestionnairs.update((val) {
                val?.add(question);
              });
            },
          ),
        );
      },
    );
  }
}
