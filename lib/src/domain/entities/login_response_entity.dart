import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_clone_flutter/src/domain/entities/user_entity.dart';

part 'login_response_entity.freezed.dart';
part 'login_response_entity.g.dart';

@freezed
class LoginResponseEntity with _$LoginResponseEntity {
  const factory LoginResponseEntity({
    String? token,
    UserEntity? user,
  }) = _LoginResponseEntity;

  factory LoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseEntityFromJson(json);
}
