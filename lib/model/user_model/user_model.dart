import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  UserModel? user;

  UserModel({this.user});

  @override
  String toString() => 'UserModel(user: $user)';

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return _$UserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
