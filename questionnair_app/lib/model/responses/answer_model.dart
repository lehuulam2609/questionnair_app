class AnswerModel {
  AnswerModel({
    this.title,
    this.isSelected,
  });

  AnswerModel.fromJson(dynamic json) {
    title = json['title'];
    isSelected = json['isSelected'];
  }

  String? title;
  bool? isSelected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['isSelected'] = isSelected;
    return map;
  }
}