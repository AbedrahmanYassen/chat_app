import 'package:chat_app/app/general/base_urls_constants.dart';
import 'package:dio/dio.dart';

abstract class HTTPRequest {
  Future<Response>? execute(String user, String userFriend);
}

class MessagesRequest implements HTTPRequest {
  final Dio dio = Dio();
  @override
  Future<Response>? execute(String user, String userFriend) {
    try {
      final messagesForTheCurrentUser = dio.get(BaseUrlsConstants.baseUrlChats);
      return messagesForTheCurrentUser;
    } on DioError catch (e) {
      execute(user, userFriend);
    }
    return null;
  }
}
