import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questionnair_app/common_widget/header_widget.dart';
import 'package:questionnair_app/language/language.dart';
import 'package:questionnair_app/utils/app_routes.dart';
import 'package:questionnair_app/utils/app_style.dart';
import 'package:questionnair_app/views/questionnair/questionnair_controller.dart';
import 'package:questionnair_app/views/questionnair/widget/add_button.dart';
import 'package:questionnair_app/views/questionnair/widget/item_questionnair_widget.dart';
import 'package:questionnair_app/views/questionnair/widget/submit_button.dart';

class QuestionnairView extends GetView<QuestionnairController> {
  const QuestionnairView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: GestureDetector(
        child: Column(
          children: [
            /// Header
            HeaderWidget(
              title: LanguageKey.questionnair.tr,
              canBack: false,
            ),

            /// Body
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    /// List Questionnair
                    Obx(
                      () => ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.listQuestionnairs.value.length,
                        itemBuilder: (context, index) {
                          final item =
                              controller.listQuestionnairs.value[index];
                          return ItemQuestionnairWidget(
                              question: item,
                              onTap: (newQuestion) {
                                controller.listQuestionnairs.update((val) {
                                  val![index] = newQuestion;
                                });
                              });
                        },
                      ),
                    ),

                    /// Add Questionnair Button
                    AddButton(
                      isNoSafe: true,
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        controller.showAddQuestionnair(context);
                      },
                    ).paddingSymmetric(horizontal: 10),
                  ],
                ),
              ),
            ),

            /// Review My Answer
            Obx(
              () => SafeArea(
                top: false,
                bottom: true,
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                  child: SubmitButton(
                    title: LanguageKey.reviewMyAnswer.tr,
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      if (controller.listQuestionnairs.value.isNotEmpty) {
                        Get.toNamed(
                          RoutesName.questionnairDetail,
                          arguments: controller.listQuestionnairs.value,
                        );
                      }
                    },
                    isEnable: controller.listQuestionnairs.value.isNotEmpty,
                  ),
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
