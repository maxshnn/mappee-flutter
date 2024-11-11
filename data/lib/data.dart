library data;

import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'data.auto_mappr.dart';

part 'data.g.dart';
part 'mapper/mapper.dart';
part 'models/request/authorization_request.dart';
part 'models/request/registration_request.dart';
part 'models/response/auth_response.dart';
part 'models/response/token_response.dart';
part 'models/user_model.dart';
part 'repositories/auth_repository_impl.dart';
part 'repositories/secure_local_repository_impl.dart';
part 'datasources/auth_remote_data_source.dart';
part 'datasources/secure_local_data_source.dart';
part 'interceptors/app_interceptor.dart';
part 'helpers/error_hepler.dart';
part 'exceptions/exceptions.dart';
