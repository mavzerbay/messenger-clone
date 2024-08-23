// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_friend_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActiveFriendEntity _$ActiveFriendEntityFromJson(Map<String, dynamic> json) {
  return _ActiveFriendEntity.fromJson(json);
}

/// @nodoc
mixin _$ActiveFriendEntity {
  bool get isActive => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveFriendEntityCopyWith<ActiveFriendEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveFriendEntityCopyWith<$Res> {
  factory $ActiveFriendEntityCopyWith(
          ActiveFriendEntity value, $Res Function(ActiveFriendEntity) then) =
      _$ActiveFriendEntityCopyWithImpl<$Res, ActiveFriendEntity>;
  @useResult
  $Res call(
      {bool isActive, int id, String firstName, String lastName, String email});
}

/// @nodoc
class _$ActiveFriendEntityCopyWithImpl<$Res, $Val extends ActiveFriendEntity>
    implements $ActiveFriendEntityCopyWith<$Res> {
  _$ActiveFriendEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveFriendEntityImplCopyWith<$Res>
    implements $ActiveFriendEntityCopyWith<$Res> {
  factory _$$ActiveFriendEntityImplCopyWith(_$ActiveFriendEntityImpl value,
          $Res Function(_$ActiveFriendEntityImpl) then) =
      __$$ActiveFriendEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isActive, int id, String firstName, String lastName, String email});
}

/// @nodoc
class __$$ActiveFriendEntityImplCopyWithImpl<$Res>
    extends _$ActiveFriendEntityCopyWithImpl<$Res, _$ActiveFriendEntityImpl>
    implements _$$ActiveFriendEntityImplCopyWith<$Res> {
  __$$ActiveFriendEntityImplCopyWithImpl(_$ActiveFriendEntityImpl _value,
      $Res Function(_$ActiveFriendEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
  }) {
    return _then(_$ActiveFriendEntityImpl(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveFriendEntityImpl implements _ActiveFriendEntity {
  const _$ActiveFriendEntityImpl(
      {this.isActive = false,
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.email});

  factory _$ActiveFriendEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveFriendEntityImplFromJson(json);

  @override
  @JsonKey()
  final bool isActive;
  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;

  @override
  String toString() {
    return 'ActiveFriendEntity(isActive: $isActive, id: $id, firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveFriendEntityImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isActive, id, firstName, lastName, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveFriendEntityImplCopyWith<_$ActiveFriendEntityImpl> get copyWith =>
      __$$ActiveFriendEntityImplCopyWithImpl<_$ActiveFriendEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveFriendEntityImplToJson(
      this,
    );
  }
}

abstract class _ActiveFriendEntity implements ActiveFriendEntity {
  const factory _ActiveFriendEntity(
      {final bool isActive,
      required final int id,
      required final String firstName,
      required final String lastName,
      required final String email}) = _$ActiveFriendEntityImpl;

  factory _ActiveFriendEntity.fromJson(Map<String, dynamic> json) =
      _$ActiveFriendEntityImpl.fromJson;

  @override
  bool get isActive;
  @override
  int get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ActiveFriendEntityImplCopyWith<_$ActiveFriendEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
