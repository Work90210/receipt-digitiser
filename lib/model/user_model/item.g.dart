// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as String?,
      itemName: json['itemName'] as String?,
      numOfItems: json['numOfItems'] as int?,
      totalValue: json['totalValue'] as int?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'itemName': instance.itemName,
      'numOfItems': instance.numOfItems,
      'totalValue': instance.totalValue,
    };
