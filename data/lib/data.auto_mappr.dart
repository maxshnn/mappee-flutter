// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;
import 'package:domain/domain.dart' as _i3;

import 'data.dart' as _i2;

/// {@template package:data/data.dart}
/// Available mappings:
/// - `UserModel` → `User`.
/// - `AuthResponse` → `Auth`.
/// - `TokenResponse` → `Token`.
/// {@endtemplate}
class $Mapper implements _i1.AutoMapprInterface {
  const $Mapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:data/data.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.UserModel>() ||
            sourceTypeOf == _typeOf<_i2.UserModel?>()) &&
        (targetTypeOf == _typeOf<_i3.User>() ||
            targetTypeOf == _typeOf<_i3.User?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.AuthResponse>() ||
            sourceTypeOf == _typeOf<_i2.AuthResponse?>()) &&
        (targetTypeOf == _typeOf<_i3.Auth>() ||
            targetTypeOf == _typeOf<_i3.Auth?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.TokenResponse>() ||
            sourceTypeOf == _typeOf<_i2.TokenResponse?>()) &&
        (targetTypeOf == _typeOf<_i3.Token>() ||
            targetTypeOf == _typeOf<_i3.Token?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:data/data.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:data/data.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(
        model,
        canReturnNull: true,
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(model);
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:data/data.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:data/data.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
      Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>((item) => _convert(item, canReturnNull: true));
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:data/data.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:data/data.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:data/data.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:data/data.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.UserModel>() ||
            sourceTypeOf == _typeOf<_i2.UserModel?>()) &&
        (targetTypeOf == _typeOf<_i3.User>() ||
            targetTypeOf == _typeOf<_i3.User?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$UserModel_To__i3$User((model as _i2.UserModel?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.AuthResponse>() ||
            sourceTypeOf == _typeOf<_i2.AuthResponse?>()) &&
        (targetTypeOf == _typeOf<_i3.Auth>() ||
            targetTypeOf == _typeOf<_i3.Auth?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$AuthResponse_To__i3$Auth((model as _i2.AuthResponse?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.TokenResponse>() ||
            sourceTypeOf == _typeOf<_i2.TokenResponse?>()) &&
        (targetTypeOf == _typeOf<_i3.Token>() ||
            targetTypeOf == _typeOf<_i3.Token?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$TokenResponse_To__i3$Token((model as _i2.TokenResponse?))
          as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  _i3.User _map__i2$UserModel_To__i3$User(_i2.UserModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping UserModel → User failed because UserModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<UserModel, User> to handle null values during mapping.');
    }
    return _i3.User(
      id: model.id,
      email: model.email,
      nickname: model.nickname,
      phone: model.phone,
    );
  }

  _i3.Auth _map__i2$AuthResponse_To__i3$Auth(_i2.AuthResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping AuthResponse → Auth failed because AuthResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<AuthResponse, Auth> to handle null values during mapping.');
    }
    return _i3.Auth(
      user: _map__i2$UserModel_To__i3$User(model.user),
      tokens: _map__i2$TokenResponse_To__i3$Token(model.tokens),
    );
  }

  _i3.Token _map__i2$TokenResponse_To__i3$Token(_i2.TokenResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping TokenResponse → Token failed because TokenResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<TokenResponse, Token> to handle null values during mapping.');
    }
    return _i3.Token(
      accessToken: model.accessToken,
      refreshToken: model.refreshToken,
    );
  }
}
