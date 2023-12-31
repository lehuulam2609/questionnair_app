import 'package:dio/dio.dart';

abstract class TwilioService {
  Future<String> joinRoomExist();
}

class TwilioServiceImpl extends TwilioService {
  @override
  Future<String> joinRoomExist() async {
    var twilioUrl = 'https://testcall-2659.twil.io/accessToken';
    try {
      final response = await Dio().get(twilioUrl);
      return response.data['accessToken'];
    } catch (_) {
      return 'Error';
    }
  }
}
