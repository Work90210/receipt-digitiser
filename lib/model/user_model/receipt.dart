import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'receipt.g.dart';

@JsonSerializable()
class Receipt {
  String? id;
  String? imagePath;
  String? storeName;
  String? timeStamp;
  int? totalPrice;
  List<Item>? items;

  Receipt({
    this.id,
    this.imagePath,
    this.storeName,
    this.timeStamp,
    this.totalPrice,
    this.items,
  });

  @override
  String toString() {
    return 'Receipt(id: $id, imagePath: $imagePath, storeName: $storeName, timeStamp: $timeStamp, totalPrice: $totalPrice, items: $items)';
  }

  factory Receipt.fromJson(Map<String, dynamic> json) {
    return _$ReceiptFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReceiptToJson(this);
}
