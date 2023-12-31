import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:questionnair_app/language/language.dart';
import 'package:questionnair_app/model/responses/questionnair_model.dart';
import 'package:get/get.dart';
import 'package:questionnair_app/utils/app_style.dart';

class ItemQuestionnairWidget extends StatelessWidget {
  final QuestionnairModel question;
  final Function(QuestionnairModel) onTap;
  const ItemQuestionnairWidget({
    super.key,
    required this.question,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController textField =
        TextEditingController(text: question.description ?? '');
    textField.selection =
        TextSelection.collapsed(offset: textField.text.length);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          /// Title
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            alignment: Alignment.centerLeft,
            child: Text(
              (question.title ?? '') + (question.isRequired == true ? '*' : ''),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          /// Answer
          question.typeQuestion == LanguageKey.paragraph.tr
              ? SizedBox(
                  height: 150,
                  child: TextField(
                    onChanged: (value) {
                      question.description = value;
                      textField.selection = TextSelection.collapsed(
                          offset: textField.text.length);
                      onTap(question);
                    },
                    controller: textField,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColor.greyF8F7F6,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: AppColor.ffDCDCDC),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: AppColor.ffDCDCDC),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: AppColor.ffDCDCDC),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignLabelWithHint: true,
                      hintStyle: TextStyles.normalTextStyle(
                        size: 16,
                        height: 1.5,
                        color: AppColor.color212121.withOpacity(0.5),
                      ),
                      hintText: '',
                      contentPadding: const EdgeInsets.all(12.0),
                      counterStyle: TextStyles.normalTextStyle(
                        color: AppColor.greyAAA69F,
                        size: 14,
                        height: 1.5,
                      ),
                      counterText: '',
                    ),
                    style: TextStyles.normalTextStyle(
                      size: 16,
                      height: 1.5,
                      color: AppColor.color212121,
                    ),
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    expands: true,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                  ),
                )
              : ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: (question.answers ?? []).length,
                  itemBuilder: (context, index) {
                    final item = (question.answers ?? [])[index];
                    TextEditingController textFieldOther =
                        TextEditingController(text: item.other ?? '');
                    textFieldOther.selection = TextSelection.collapsed(
                        offset: textFieldOther.text.length);
                    return Column(
                      children: [
                        SizedBox(
                          height: 45,
                          child: InkWell(
                            onTap: () {
                              (question.answers ?? [])[index].isSelected =
                                  !((question.answers ?? [])[index]
                                          .isSelected ??
                                      false);
                              onTap(question);
                            },
                            child: Row(
                              children: [
                                Icon(
                                  item.isSelected == true
                                      ? Icons.check_box
                                      : Icons.check_box_outline_blank,
                                  color: Colors.blue,
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      item.title ?? '',
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
                        ),
                        (item.title ?? '').toLowerCase() == 'other'
                            ? SizedBox(
                                height: 100,
                                child: TextField(
                                  onChanged: (value) {
                                    item.other = value;
                                    textFieldOther.selection =
                                        TextSelection.collapsed(
                                            offset: textFieldOther.text.length);
                                    onTap(question);
                                  },
                                  controller: textFieldOther,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: AppColor.greyF8F7F6,
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColor.ffDCDCDC),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColor.ffDCDCDC),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColor.ffDCDCDC),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    alignLabelWithHint: true,
                                    hintStyle: TextStyles.normalTextStyle(
                                      size: 16,
                                      height: 1.5,
                                      color:
                                          AppColor.color212121.withOpacity(0.5),
                                    ),
                                    hintText: '',
                                    contentPadding: const EdgeInsets.all(12.0),
                                    counterStyle: TextStyles.normalTextStyle(
                                      color: AppColor.greyAAA69F,
                                      size: 14,
                                      height: 1.5,
                                    ),
                                    counterText: '',
                                  ),
                                  style: TextStyles.normalTextStyle(
                                    size: 16,
                                    height: 1.5,
                                    color: AppColor.color212121,
                                  ),
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  expands: true,
                                  maxLines: null,
                                  textAlignVertical: TextAlignVertical.top,
                                ),
                              )
                            : const SizedBox(),
                      ],
                    );
                  },
                ),
        ],
      ),
    );
  }
}
