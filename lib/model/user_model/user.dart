import 'package:json_annotation/json_annotation.dart';

import 'receipt.dart';
import 'store.dart';

part 'user.g.dart';

@JsonSerializable()
class UserModel {
  String? uid;
  String? email;
  String? name;
  List<Store>? store;
  List<Receipt>? receipts;

  UserModel({this.uid, this.email, this.name, this.store, this.receipts});

  @override
  String toString() {
    return 'User(uid: $uid, email: $email, name: $name, store: $store, receipts: $receipts)';
  }

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
