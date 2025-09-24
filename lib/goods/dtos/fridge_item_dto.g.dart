// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fridge_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FridgeItemDTOImpl _$$FridgeItemDTOImplFromJson(Map<String, dynamic> json) =>
    _$FridgeItemDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      quantity: (json['quantity'] as num).toInt(),
      timeStored: DateTime.parse(json['timeStored'] as String),
      bestBeforeDate: DateTime.parse(json['bestBeforeDate'] as String),
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$FridgeItemDTOImplToJson(_$FridgeItemDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'quantity': instance.quantity,
      'timeStored': instance.timeStored.toIso8601String(),
      'bestBeforeDate': instance.bestBeforeDate.toIso8601String(),
      'imageUrl': instance.imageUrl,
    };
