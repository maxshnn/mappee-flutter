part of '../data.dart';

class AppInterceptor extends QueuedInterceptor {
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    switch (err.response?.statusCode) {
      case 400:
        handler.reject(
          BadRequest(
            err.requestOptions,
            err.error,
            err.message,
            err.response,
          ),
        );
        break;
      case 403:
        handler.reject(
          Forbidden(
            err.requestOptions,
            err.error,
            err.message,
            err.response,
          ),
        );
        break;
      case 404:
        handler.reject(
          NotFound(
            err.requestOptions,
            err.error,
            err.message,
            err.response,
          ),
        );
        break;
      case 409:
        handler.reject(
          Conflict(
            err.requestOptions,
            err.error,
            err.message,
            err.response,
          ),
        );
        break;
      case 422:
        handler.reject(
          UnporcessableContent(
            err.requestOptions,
            err.error,
            err.message,
            err.response,
          ),
        );
        break;
      case 500 || 502:
        handler.reject(
          ServerUnavailable(
            err.requestOptions,
            err.error,
            err.message,
            err.response,
          ),
        );
        break;
      case 503:
        handler.reject(
          ServerTemporarilyUnavailable(
            err.requestOptions,
            err.error,
            err.message,
            err.response,
          ),
        );
        break;
      default:
        handler.reject(
          UnknownError(
            err.requestOptions,
            err.error,
            err.message,
            err.response,
          ),
        );
        break;
    }
  }
}
