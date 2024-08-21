import 'package:json_annotation/json_annotation.dart';
import 'package:messenger_clone_flutter/src/domain/entities/user_entity.dart';

part 'login_response_entity.g.dart';

@JsonSerializable()
class LoginResponseEntity {
  final String? token;
  final UserEntity? user;

  LoginResponseEntity({
    this.token,
    this.user,
  });

  factory LoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseEntityToJson(this);
}
