part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @JsonKey(defaultValue: Status.initial) required Status status,
    @JsonKey(defaultValue: '') required String error,
    @JsonKey(defaultValue: null) User? user,
  }) = _Auth;
}
