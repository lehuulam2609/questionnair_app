import 'dart:js_util';
import 'package:questionnair_app/utils/js_helper/js_library.dart';

class JSHelper {
  /// This method name inside 'getPlatform' should be same in JavaScript file
  String getPlatformFromJS() {
    return getPlatform();
  }

  Future<String> addCalendar(dynamic data) async {
    return await promiseToFuture(jsAddScheduleToCalendarFunction(data));
  }

  Future<String> notiReadyDelete(dynamic data) async {
    return await promiseToFuture(jsAddReadyToDeleteFunction(data));
  }
}
