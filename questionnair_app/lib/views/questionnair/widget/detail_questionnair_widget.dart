import 'package:flutter/material.dart';
import 'package:questionnair_app/language/language.dart';
import 'package:questionnair_app/model/responses/questionnair_model.dart';
import 'package:get/get.dart';

class DetailQuestionnairWidget extends StatelessWidget {
  final QuestionnairModel question;
  const DetailQuestionnairWidget({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    final filter = (question.answers ?? [])
        .where((element) => element.isSelected == true)
        .toList();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          /// Title
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            alignment: Alignment.centerLeft,
            child: Text(
              (question.title ?? ''),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          /// Answer
          question.typeQuestion == LanguageKey.paragraph.tr
              ? Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    (question.description ?? ''),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      height: 1.35,
                    ),
                  ),
                )
              : ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: filter.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 40,
                      child: Text(
                        filter[index].title ?? '',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          height: 1.35,
                        ),
                      ),
                    );
                  },
                ),
        ],
      ),
    );
  }
}
