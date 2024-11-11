part of '../data.dart';

@RestApi(baseUrl: "http://45.10.110.181:8080/api/v1/auth/")
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio, {String baseUrl}) = _AuthRemoteDataSource;

  @POST("registration/customer/new")
  Future<AuthResponse> registration(
    @Body() Map<String, dynamic> request,
  );

  @POST("login")
  Future<AuthResponse> authorization(
    @Body() Map<String, dynamic> request,
  );

  @GET("login/profile")
  Future<UserModel> profile(
    @Header('Authorization') String token,
  );
}
