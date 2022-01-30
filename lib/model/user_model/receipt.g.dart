// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Receipt _$ReceiptFromJson(Map<String, dynamic> json) => Receipt(
      id: json['id'] as String?,
      imagePath: json['imagePath'] as String?,
      storeName: json['storeName'] as String?,
      timeStamp: json['timeStamp'] as String?,
      totalPrice: json['totalPrice'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReceiptToJson(Receipt instance) => <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'storeName': instance.storeName,
      'timeStamp': instance.timeStamp,
      'totalPrice': instance.totalPrice,
      'items': instance.items,
    };
