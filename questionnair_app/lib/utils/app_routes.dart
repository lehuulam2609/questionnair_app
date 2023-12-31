import 'package:get/get.dart';
import 'package:questionnair_app/views/questionnair/questionnair_binding.dart';
import 'package:questionnair_app/views/questionnair/questionnair_view.dart';
import 'package:questionnair_app/views/questionnair_detail/questionnair_detail_binding.dart';
import 'package:questionnair_app/views/questionnair_detail/questionnair_detail_view.dart';

class AppRoutes {
  AppRoutes._();

  static final mainRoutes = [
    GetPage(
      name: RoutesName.questionnair,
      page: () => const QuestionnairView(),
      binding: QuestionnairBinding(),
    ),
    GetPage(
      name: RoutesName.questionnairDetail,
      page: () => const QuestionnairDetailView(),
      binding: QuestionnairDetailBinding(),
    ),
  ];
}

class RoutesName {
  static const String questionnair = '/questionnair';
  static const String questionnairDetail = '/questionnair_detail';
}
