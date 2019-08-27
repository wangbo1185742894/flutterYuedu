import 'package:dio/dio.dart';
import 'dart:io';
import 'package:cookie_jar/cookie_jar.dart';

class HttpUtil extends Object {
  static HttpUtil instance;
  BaseOptions option;
  Dio dio;

  static HttpUtil getInstance() {
    if (instance == null) {
      instance = new HttpUtil();
    }
    return instance;
  }

  HttpUtil() {
    option = BaseOptions(
        baseUrl: "",
        receiveTimeout: 5000,
        connectTimeout: 10000,
        headers: {
          "version": 1.0,
        },
        contentType: ContentType.json,
        responseType: ResponseType.json);

    dio = Dio(option);

    dio.interceptors.add(CookieManager(CookieJar()));
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions option) {
      print("请求之前");
    }, onResponse: (Response response) {
      print("响应之前");
    }, onError: (DioError error) {
      print("错误之前");
    }));
  }

  get(url, {data, options, cancelToken}) async {
    Response response;
    try {
      response = await dio.get(url,
          queryParameters: data, options: options, cancelToken: cancelToken);
      print('get success statusCode---------${response.statusCode}');
      print('get success data---------${response.data}');
    } on DioError catch (e) {
      print("请求错误：" + e.toString());
      formatError(e);
    }

    return response.data;
  }

  post(url, {data, options, cancelToken}) async {
    Response response;
    try {
      response = await dio.post(url,
          data: data, options: options, cancelToken: cancelToken);
      print('post success statusCode---------${response.statusCode}');
      print('post success data---------${response.data}');
    } on DioError catch (e) {
      print("请求错误：" + e.toString());
      formatError(e);
    }

    return response.data;
  }

  put(url, {data, options, cancelToken}) async {
    Response response;
    try {
      response = await dio.put(url,data: data,options: options,cancelToken:  cancelToken);
      print('put success statusCode---------${response.statusCode}');
      print('put success data---------${response.data}');
    } on DioError catch (e) {
      print("请求错误：" + e.toString());
      formatError(e);
    }

    return response.data;
  }

  delete(url, {data, options, cancelToken}) async {
    Response response;
    try {
      response = await dio.delete(url,data: data,options: options,cancelToken:  cancelToken);
      print('put success statusCode---------${response.statusCode}');
      print('put success data---------${response.data}');
    } on DioError catch (e) {
      print("请求错误：" + e.toString());
      formatError(e);
    }

    return response.data;
  }


  downloadFile(fileUrl,savePath) async {
    Response response;
    try{
      response = await dio.download(fileUrl, savePath,onReceiveProgress: (int count,int total){
        print("已经下载：$count,总共：$total");
      });
      print('downloadFile success---------${response.data}');
    }on DioError catch(e){
      print("请求错误" + e.toString());
      formatError(e);
    }
    return response.data;

  }

  void formatError(DioError e) {
    if (e.type == DioErrorType.CONNECT_TIMEOUT) {
      // It occurs when url is opened timeout.
      print("连接超时");
    } else if (e.type == DioErrorType.SEND_TIMEOUT) {
      // It occurs when url is sent timeout.
      print("请求超时");
    } else if (e.type == DioErrorType.RECEIVE_TIMEOUT) {
      //It occurs when receiving timeout
      print("响应超时");
    } else if (e.type == DioErrorType.RESPONSE) {
      // When the server response, but with a incorrect status, such as 404, 503...
      print("出现异常");
    } else if (e.type == DioErrorType.CANCEL) {
      // When the request is cancelled, dio will throw a error with this type.
      print("请求取消");
    } else {
      print("未知错误");
    }
  }

  void cancelRequests(CancelToken token) {
    token.cancel("cancelled");
  }
}
