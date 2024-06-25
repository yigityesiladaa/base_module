import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioException? exception;

  const DataState({this.data, this.exception});

}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess({required T data}) : super(data: data);

  factory DataSuccess.fromJson(Map<String, dynamic> json) {
    return DataSuccess(data: json['data']);
  }
}

class DataFailed<T> extends DataState<T> {
  const DataFailed({required DioException exception}) : super(exception: exception);

  factory DataFailed.fromJson(Map<String, dynamic> json) {
    return DataFailed(exception: DioException(error: json['message'], requestOptions: RequestOptions()));
  }
}
