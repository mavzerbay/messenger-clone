// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationEntity _$ConversationEntityFromJson(Map<String, dynamic> json) {
  return _ConversationEntity.fromJson(json);
}

/// @nodoc
mixin _$ConversationEntity {
  int get id => throw _privateConstructorUsedError;
  List<int> get userIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationEntityCopyWith<ConversationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEntityCopyWith<$Res> {
  factory $ConversationEntityCopyWith(
          ConversationEntity value, $Res Function(ConversationEntity) then) =
      _$ConversationEntityCopyWithImpl<$Res, ConversationEntity>;
  @useResult
  $Res call({int id, List<int> userIds});
}

/// @nodoc
class _$ConversationEntityCopyWithImpl<$Res, $Val extends ConversationEntity>
    implements $ConversationEntityCopyWith<$Res> {
  _$ConversationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userIds: null == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationEntityImplCopyWith<$Res>
    implements $ConversationEntityCopyWith<$Res> {
  factory _$$ConversationEntityImplCopyWith(_$ConversationEntityImpl value,
          $Res Function(_$ConversationEntityImpl) then) =
      __$$ConversationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<int> userIds});
}

/// @nodoc
class __$$ConversationEntityImplCopyWithImpl<$Res>
    extends _$ConversationEntityCopyWithImpl<$Res, _$ConversationEntityImpl>
    implements _$$ConversationEntityImplCopyWith<$Res> {
  __$$ConversationEntityImplCopyWithImpl(_$ConversationEntityImpl _value,
      $Res Function(_$ConversationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userIds = null,
  }) {
    return _then(_$ConversationEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationEntityImpl implements _ConversationEntity {
  _$ConversationEntityImpl(
      {required this.id, final List<int> userIds = const []})
      : _userIds = userIds;

  factory _$ConversationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationEntityImplFromJson(json);

  @override
  final int id;
  final List<int> _userIds;
  @override
  @JsonKey()
  List<int> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  String toString() {
    return 'ConversationEntity(id: $id, userIds: $userIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_userIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationEntityImplCopyWith<_$ConversationEntityImpl> get copyWith =>
      __$$ConversationEntityImplCopyWithImpl<_$ConversationEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationEntityImplToJson(
      this,
    );
  }
}

abstract class _ConversationEntity implements ConversationEntity {
  factory _ConversationEntity(
      {required final int id,
      final List<int> userIds}) = _$ConversationEntityImpl;

  factory _ConversationEntity.fromJson(Map<String, dynamic> json) =
      _$ConversationEntityImpl.fromJson;

  @override
  int get id;
  @override
  List<int> get userIds;
  @override
  @JsonKey(ignore: true)
  _$$ConversationEntityImplCopyWith<_$ConversationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
