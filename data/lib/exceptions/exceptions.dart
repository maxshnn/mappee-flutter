part of '../data.dart';

class BadRequest extends DioException {
  RequestOptions requestOptions;
  Object? error;
  String? message;
  Response<dynamic>? response;
  BadRequest(
    this.requestOptions,
    this.error,
    this.message,
    this.response,
  ) : super(
          requestOptions: requestOptions,
          error: error,
          message: message,
          response: response,
        );
}

class Forbidden extends DioException {
  RequestOptions requestOptions;
  Object? error;
  String? message;
  Response<dynamic>? response;
  Forbidden(
    this.requestOptions,
    this.error,
    this.message,
    this.response,
  ) : super(
          requestOptions: requestOptions,
          error: error,
          message: message,
          response: response,
        );
}

class NotFound extends DioException {
  RequestOptions requestOptions;
  Object? error;
  String? message;
  Response<dynamic>? response;
  NotFound(
    this.requestOptions,
    this.error,
    this.message,
    this.response,
  ) : super(
          requestOptions: requestOptions,
          error: error,
          message: message,
          response: response,
        );
}

class Conflict extends DioException {
  RequestOptions requestOptions;
  Object? error;
  String? message;
  Response<dynamic>? response;
  Conflict(
    this.requestOptions,
    this.error,
    this.message,
    this.response,
  ) : super(
          requestOptions: requestOptions,
          error: error,
          message: message,
          response: response,
        );
}

class UnporcessableContent extends DioException {
  RequestOptions requestOptions;
  Object? error;
  String? message;
  Response<dynamic>? response;
  UnporcessableContent(
    this.requestOptions,
    this.error,
    this.message,
    this.response,
  ) : super(
          requestOptions: requestOptions,
          error: error,
          message: message,
          response: response,
        );
}

class ServerUnavailable extends DioException {
  RequestOptions requestOptions;
  Object? error;
  String? message;
  Response<dynamic>? response;
  ServerUnavailable(
    this.requestOptions,
    this.error,
    this.message,
    this.response,
  ) : super(
          requestOptions: requestOptions,
          error: error,
          message: message,
          response: response,
        );
}

class ServerTemporarilyUnavailable extends DioException {
  RequestOptions requestOptions;
  Object? error;
  String? message;
  Response<dynamic>? response;
  ServerTemporarilyUnavailable(
    this.requestOptions,
    this.error,
    this.message,
    this.response,
  ) : super(
          requestOptions: requestOptions,
          error: error,
          message: message,
          response: response,
        );
}

class UnknownError extends DioException {
  RequestOptions requestOptions;
  Object? error;
  String? message;
  Response<dynamic>? response;
  UnknownError(
    this.requestOptions,
    this.error,
    this.message,
    this.response,
  ) : super(
          requestOptions: requestOptions,
          error: error,
          message: message,
          response: response,
        );
}
