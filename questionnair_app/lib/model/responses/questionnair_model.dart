import 'package:questionnair_app/model/responses/answer_model.dart';

class QuestionnairModel {
  String? title;
  String? typeQuestion;
  List<AnswerModel>? answers = [];
  String? description;
  bool? isAllow = false;
  bool? isRequired = false;

  QuestionnairModel({
    this.title,
    this.typeQuestion,
    this.answers,
    this.isAllow,
    this.isRequired,
    this.description,
  });

  QuestionnairModel.fromJson(dynamic json) {
    title = json['title'];
    typeQuestion = json['typeQuestion'];
    answers = json['answers'];
    isAllow = json['isAllow'];
    isRequired = json['isRequired'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['typeQuestion'] = typeQuestion;
    map['answers'] = answers ?? [];
    map['isAllow'] = isAllow ?? false;
    map['isRequired'] = isRequired ?? false;
    map['description'] = description;
    return map;
  }
}
