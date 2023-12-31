import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questionnair_app/common_widget/header_widget.dart';
import 'package:questionnair_app/language/language.dart';
import 'package:questionnair_app/utils/app_style.dart';
import 'package:questionnair_app/views/questionnair/widget/detail_questionnair_widget.dart';
import 'package:questionnair_app/views/questionnair_detail/questionnair_detail_controller.dart';

class QuestionnairDetailView extends GetView<QuestionnairDetailController> {
  const QuestionnairDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Column(
        children: [
          /// Header
          HeaderWidget(
            title: LanguageKey.questionnairDetail.tr,
            canBack: true,
          ),

          /// Body
          Expanded(
            child: Obx(
              () => ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: controller.listQuestionnairs.value.length,
                itemBuilder: (context, index) {
                  return DetailQuestionnairWidget(
                    question: controller.listQuestionnairs.value[index],
                  );
                },
              ),
            ),
          ),

          /// Safe
          const SafeArea(
            top: false,
            bottom: true,
            child: SizedBox(height: 10),
          ),
        ],
      ),
    );
  }
}
