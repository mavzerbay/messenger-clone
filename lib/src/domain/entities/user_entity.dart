import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const UserEntity._();

  const factory UserEntity({
    required int id,
    required String firstName,
    required String lastName,
    required String email,
  }) = _UserEntity;

  String get fullName => '$firstName $lastName';

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
