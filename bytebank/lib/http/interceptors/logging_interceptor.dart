import 'package:http_interceptor/http_interceptor.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print('request');
    print('url: ${data.url}');
    print('hearder: ${data.headers}');
    print('body: ${data.body}');
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    print('response');
    print('status code: ${data.statusCode}');
    print('hearder: ${data.headers}');
    print('body: ${data.body}');
    return data;
  }
}
