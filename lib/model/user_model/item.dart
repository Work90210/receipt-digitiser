import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  String? id;
  String? itemName;
  int? numOfItems;
  int? totalValue;

  Item({this.id, this.itemName, this.numOfItems, this.totalValue});

  @override
  String toString() {
    return 'Item(id: $id, itemName: $itemName, numOfItems: $numOfItems, totalValue: $totalValue)';
  }

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
