// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FriendRequestEntity _$FriendRequestEntityFromJson(Map<String, dynamic> json) {
  return _FriendRequestEntity.fromJson(json);
}

/// @nodoc
mixin _$FriendRequestEntity {
  int get id => throw _privateConstructorUsedError;
  UserEntity get creator => throw _privateConstructorUsedError;
  UserEntity get receiver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendRequestEntityCopyWith<FriendRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestEntityCopyWith<$Res> {
  factory $FriendRequestEntityCopyWith(
          FriendRequestEntity value, $Res Function(FriendRequestEntity) then) =
      _$FriendRequestEntityCopyWithImpl<$Res, FriendRequestEntity>;
  @useResult
  $Res call({int id, UserEntity creator, UserEntity receiver});

  $UserEntityCopyWith<$Res> get creator;
  $UserEntityCopyWith<$Res> get receiver;
}

/// @nodoc
class _$FriendRequestEntityCopyWithImpl<$Res, $Val extends FriendRequestEntity>
    implements $FriendRequestEntityCopyWith<$Res> {
  _$FriendRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creator = null,
    Object? receiver = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get creator {
    return $UserEntityCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get receiver {
    return $UserEntityCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FriendRequestEntityImplCopyWith<$Res>
    implements $FriendRequestEntityCopyWith<$Res> {
  factory _$$FriendRequestEntityImplCopyWith(_$FriendRequestEntityImpl value,
          $Res Function(_$FriendRequestEntityImpl) then) =
      __$$FriendRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, UserEntity creator, UserEntity receiver});

  @override
  $UserEntityCopyWith<$Res> get creator;
  @override
  $UserEntityCopyWith<$Res> get receiver;
}

/// @nodoc
class __$$FriendRequestEntityImplCopyWithImpl<$Res>
    extends _$FriendRequestEntityCopyWithImpl<$Res, _$FriendRequestEntityImpl>
    implements _$$FriendRequestEntityImplCopyWith<$Res> {
  __$$FriendRequestEntityImplCopyWithImpl(_$FriendRequestEntityImpl _value,
      $Res Function(_$FriendRequestEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creator = null,
    Object? receiver = null,
  }) {
    return _then(_$FriendRequestEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FriendRequestEntityImpl implements _FriendRequestEntity {
  _$FriendRequestEntityImpl(
      {required this.id, required this.creator, required this.receiver});

  factory _$FriendRequestEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$FriendRequestEntityImplFromJson(json);

  @override
  final int id;
  @override
  final UserEntity creator;
  @override
  final UserEntity receiver;

  @override
  String toString() {
    return 'FriendRequestEntity(id: $id, creator: $creator, receiver: $receiver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendRequestEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, creator, receiver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendRequestEntityImplCopyWith<_$FriendRequestEntityImpl> get copyWith =>
      __$$FriendRequestEntityImplCopyWithImpl<_$FriendRequestEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FriendRequestEntityImplToJson(
      this,
    );
  }
}

abstract class _FriendRequestEntity implements FriendRequestEntity {
  factory _FriendRequestEntity(
      {required final int id,
      required final UserEntity creator,
      required final UserEntity receiver}) = _$FriendRequestEntityImpl;

  factory _FriendRequestEntity.fromJson(Map<String, dynamic> json) =
      _$FriendRequestEntityImpl.fromJson;

  @override
  int get id;
  @override
  UserEntity get creator;
  @override
  UserEntity get receiver;
  @override
  @JsonKey(ignore: true)
  _$$FriendRequestEntityImplCopyWith<_$FriendRequestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
