// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponseEntity _$LoginResponseEntityFromJson(Map<String, dynamic> json) {
  return _LoginResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseEntity {
  String? get token => throw _privateConstructorUsedError;
  UserEntity? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseEntityCopyWith<LoginResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseEntityCopyWith<$Res> {
  factory $LoginResponseEntityCopyWith(
          LoginResponseEntity value, $Res Function(LoginResponseEntity) then) =
      _$LoginResponseEntityCopyWithImpl<$Res, LoginResponseEntity>;
  @useResult
  $Res call({String? token, UserEntity? user});

  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginResponseEntityCopyWithImpl<$Res, $Val extends LoginResponseEntity>
    implements $LoginResponseEntityCopyWith<$Res> {
  _$LoginResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseEntityImplCopyWith<$Res>
    implements $LoginResponseEntityCopyWith<$Res> {
  factory _$$LoginResponseEntityImplCopyWith(_$LoginResponseEntityImpl value,
          $Res Function(_$LoginResponseEntityImpl) then) =
      __$$LoginResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, UserEntity? user});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoginResponseEntityImplCopyWithImpl<$Res>
    extends _$LoginResponseEntityCopyWithImpl<$Res, _$LoginResponseEntityImpl>
    implements _$$LoginResponseEntityImplCopyWith<$Res> {
  __$$LoginResponseEntityImplCopyWithImpl(_$LoginResponseEntityImpl _value,
      $Res Function(_$LoginResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_$LoginResponseEntityImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseEntityImpl implements _LoginResponseEntity {
  const _$LoginResponseEntityImpl({this.token, this.user});

  factory _$LoginResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseEntityImplFromJson(json);

  @override
  final String? token;
  @override
  final UserEntity? user;

  @override
  String toString() {
    return 'LoginResponseEntity(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseEntityImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseEntityImplCopyWith<_$LoginResponseEntityImpl> get copyWith =>
      __$$LoginResponseEntityImplCopyWithImpl<_$LoginResponseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseEntity implements LoginResponseEntity {
  const factory _LoginResponseEntity(
      {final String? token,
      final UserEntity? user}) = _$LoginResponseEntityImpl;

  factory _LoginResponseEntity.fromJson(Map<String, dynamic> json) =
      _$LoginResponseEntityImpl.fromJson;

  @override
  String? get token;
  @override
  UserEntity? get user;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseEntityImplCopyWith<_$LoginResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
