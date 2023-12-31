import 'package:flutter/material.dart';
import 'package:questionnair_app/language/language.dart';
import 'package:get/get.dart';
import 'package:questionnair_app/model/responses/answer_model.dart';
import 'package:questionnair_app/model/responses/questionnair_model.dart';
import 'package:questionnair_app/utils/app_helper.dart';
import 'package:questionnair_app/utils/app_style.dart';
import 'package:questionnair_app/views/questionnair/widget/add_button.dart';
import 'package:questionnair_app/views/questionnair/widget/dropdown.dart';
import 'package:questionnair_app/views/questionnair/widget/submit_button.dart';

class AddNewQuestion extends StatefulWidget {
  final QuestionnairModel? questionnair;
  final Function(QuestionnairModel) onSubmit;
  const AddNewQuestion({
    super.key,
    this.questionnair,
    required this.onSubmit,
  });

  @override
  State<AddNewQuestion> createState() => _AddNewQuestionState();
}

class _AddNewQuestionState extends State<AddNewQuestion> {
  List<String> listDropdowns = [
    LanguageKey.paragraph.tr,
    LanguageKey.checkbox.tr
  ];
  String typeSelected = LanguageKey.checkbox.tr;
  List<TextEditingController> listAnswers = [TextEditingController(text: '')];
  TextEditingController titleQuestionairController = TextEditingController();
  bool enableButton = false;
  bool isAllow = false;
  bool isRequired = false;

  @override
  void initState() {
    super.initState();
    if (widget.questionnair != null) {
      titleQuestionairController.text = widget.questionnair?.title ?? '';
      typeSelected = widget.questionnair?.typeQuestion ?? '';
      if ((widget.questionnair?.answers ?? []).isNotEmpty) {
        listAnswers = [];
        for (var item in widget.questionnair?.answers ?? []) {
          listAnswers.add(TextEditingController(text: item));
        }
      }
      isAllow = widget.questionnair?.isAllow ?? false;
      isRequired = widget.questionnair?.isRequired ?? false;
      checkEnableButton();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// Title
            Text(
              LanguageKey.addNewQuestion.tr,
              style: TextStyles.semiBoldTextStyle(
                color: AppColor.black151515,
                fontFamily: NameFont.hiragino,
                size: 18,
                height: 1,
              ),
            ).paddingSymmetric(vertical: 4),

            const SizedBox(height: 20),

            /// Title Questionnair
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(bottom: 7),
              child: Text(
                LanguageKey.titleQuestion.tr,
                style: TextStyles.normalTextStyle(
                  color: AppColor.black151515,
                  fontFamily: NameFont.hiragino,
                  size: 16,
                  height: 1,
                ),
              ),
            ),

            TextField(
              controller: titleQuestionairController,
              decoration: InputDecoration(
                hintText: LanguageKey.titleQuestion.tr,
              ),
            ),

            /// Type Questionnair
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                bottom: 7,
                top: 16,
              ),
              child: Text(
                LanguageKey.typeQuestion.tr,
                style: TextStyles.normalTextStyle(
                  color: AppColor.black151515,
                  fontFamily: NameFont.hiragino,
                  size: 16,
                  height: 1,
                ),
              ),
            ),
            DropdownButtonWidget(
              data: listDropdowns,
              onChange: (String? value) {
                typeSelected = value ?? '';
                listAnswers = [TextEditingController(text: '')];
                checkEnableButton();

                setState(() {});
              },
              hintText: '',
              valueSelected: typeSelected,
            ),

            const SizedBox(height: 16),

            /// CheckBox
            typeSelected == LanguageKey.checkbox.tr
                ? Column(
                    children: [
                      /// List Answer
                      SizedBox(
                        height:
                            (listAnswers.length > 4 ? 5 : listAnswers.length) *
                                40,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: listAnswers.length > 4
                              ? const ClampingScrollPhysics()
                              : const NeverScrollableScrollPhysics(),
                          itemCount: listAnswers.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 40,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.check_box_outline_blank,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: TextField(
                                        controller: listAnswers[index],
                                        onChanged: (String text) {
                                          checkEnableButton();
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),

                      /// Add Button
                      AddButton(
                        isNoSafe: true,
                        onTap: () {
                          if (listAnswers.length >= 5) {
                            AppHelper.showError(LanguageKey.maximumAnswer.tr);
                            return;
                          }
                          if (listAnswers.isNotEmpty &&
                              listAnswers.last.text.isNotEmpty) {
                            listAnswers.add(
                              TextEditingController(text: ''),
                            );
                            checkEnableButton();
                            setState(() {});
                          }
                        },
                        title: LanguageKey.addAnotherAnswer.tr,
                      )
                    ],
                  )
                : const SizedBox(),

            /// Check Allow
            _buildCheckBox(LanguageKey.allowText.tr, isAllow, () {
              isAllow = !isAllow;
              setState(() {});
            }),

            /// Required
            _buildCheckBox(LanguageKey.requiredText.tr, isRequired, () {
              isRequired = !isRequired;
              setState(() {});
            }),

            /// Submit
            const SizedBox(height: 25),
            SubmitButton(
              isEnable: enableButton,
              onTap: () {
                List<AnswerModel> answers = [];
                if (typeSelected == LanguageKey.checkbox.tr) {
                  for (var item in listAnswers) {
                    answers.add(AnswerModel(
                      title: item.text,
                      isSelected: false,
                    ));
                  }
                }
                final QuestionnairModel model = QuestionnairModel(
                  title: titleQuestionairController.text,
                  typeQuestion: typeSelected,
                  answers: answers,
                  isAllow: isAllow,
                  isRequired: isRequired,
                  description: widget.questionnair?.description ?? '',
                );
                widget.onSubmit(model);
                Get.back();
              },
              title: LanguageKey.submit.tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Check Enable Button
  void checkEnableButton() {
    final filter =
        listAnswers.where((element) => element.text.isNotEmpty).toList();
    enableButton =
        (typeSelected == LanguageKey.paragraph.tr || filter.isNotEmpty) &&
            titleQuestionairController.text.isNotEmpty;
  }

  /// Check Box
  Widget _buildCheckBox(
    String title,
    bool isCheck,
    Function onTap,
  ) {
    return SizedBox(
      height: 45,
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Row(
          children: [
            Icon(
              isCheck ? Icons.check_box : Icons.check_box_outline_blank,
              color: Colors.blue,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
