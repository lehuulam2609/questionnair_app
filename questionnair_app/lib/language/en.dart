import 'package:questionnair_app/language/language.dart';

class EnglishLanguage {
  Map<String, String> generateLanguage() {
    return {
      // Login
      LanguageKey.login: 'Login',
      LanguageKey.questionnair: 'Questions',
      LanguageKey.addQuestionnair: 'Add Question',
      LanguageKey.addNewQuestion: 'Add New Question',
      LanguageKey.paragraph: 'Paragraph',
      LanguageKey.checkbox: 'Checkbox List',
      LanguageKey.typeQuestion: 'Type question here',
      LanguageKey.addAnotherAnswer: 'Add another answer',
      LanguageKey.allowText: 'Allow user to specify their own answer',
      LanguageKey.requiredText: 'This field is required',
      LanguageKey.submit: 'Submit',
      LanguageKey.titleQuestion: 'Title question',
      LanguageKey.reviewMyAnswer: 'Review My Answers',
      LanguageKey.questionnairDetail: 'Question Detail',
      LanguageKey.maximumAnswer: 'Maximum of answer in checkbox is 5',
    };
  }
}
