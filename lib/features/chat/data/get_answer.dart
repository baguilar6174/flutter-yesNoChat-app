import 'package:dio/dio.dart';

import 'package:yesnochat_app/features/features.dart';

class GetAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final messageModel = MessageModel.fromJsonMap(response.data);
    return messageModel.toMessageEntity();
  }
}
