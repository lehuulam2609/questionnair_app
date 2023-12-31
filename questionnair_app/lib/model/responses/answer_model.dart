class AnswerModel {
  AnswerModel({
    this.title,
    this.isSelected,
    this.other,
  });

  AnswerModel.fromJson(dynamic json) {
    title = json['title'];
    isSelected = json['isSelected'];
    other = json['other'];
  }

  String? title;
  String? other;
  bool? isSelected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['other'] = other;
    map['isSelected'] = isSelected;
    return map;
  }
}