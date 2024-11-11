import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:domain/domain.dart';
import 'package:mappee/presentation/resources/app_enums.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase _authUseCase;
  AuthBloc(AuthUseCase authUseCase)
      : _authUseCase = authUseCase,
        super(const AuthState(status: Status.initial, error: '')) {
    on<CheckTokenEvent>(_onCheckTokenEvent);
    on<RegistrationEvent>(_onRegistrationEvent);
    on<AuthorizationEvent>(_onAuthorizationEvent);
    on<FetchProfileEvent>(_onFetchProfileEvent);
    on<LogoutEvent>(_onLogoutEvent);
  }
  Future<void> _onCheckTokenEvent(CheckTokenEvent event, Emitter emit) async {
    if (await _authUseCase.hasToken()) {
      emit(state.copyWith(status: Status.success));
    } else {
      emit(state.copyWith(status: Status.unauthorized));
    }
  }

  Future<void> _onFetchProfileEvent(FetchProfileEvent event, Emitter emit) async {
    try {
      var user = await _authUseCase.profile();
      emit(state.copyWith(user: user, status: Status.success));
    } on DioException catch (error) {
      emit(
        state.copyWith(
          status: Status.failed,
          error: error.response?.data['message'] ?? 'Неизвестная ошибка',
        ),
      );
    }
  }

  Future<void> _onRegistrationEvent(RegistrationEvent event, Emitter emit) async {
    try {
      await _authUseCase.registration(
        event.email,
        event.nickname,
        event.phone,
        event.password,
      );
      emit(state.copyWith(status: Status.success));
    } on DioException catch (error) {
      emit(
        state.copyWith(
          status: Status.failed,
          error: error.response?.data['message'] ?? 'Неизвестная ошибка',
        ),
      );
    }
  }

  Future<void> _onAuthorizationEvent(AuthorizationEvent event, Emitter emit) async {
    try {
      await _authUseCase.authorization(
        event.login,
        event.password,
      );
      emit(state.copyWith(status: Status.success));
    } on DioException catch (error) {
      emit(
        state.copyWith(
          status: Status.failed,
          error: error.response?.data['message'] ?? 'Неизвестная ошибка',
        ),
      );
    }
  }

  Future<void> _onLogoutEvent(LogoutEvent event, Emitter emit) async {
    await _authUseCase.logout();
    emit(state.copyWith(status: Status.unauthorized, user: null));
  }
}
