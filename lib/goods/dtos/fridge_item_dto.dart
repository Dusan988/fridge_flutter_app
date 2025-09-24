
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'fridge_item_dto.freezed.dart';
part 'fridge_item_dto.g.dart';

@freezed
class FridgeItemDTO with _$FridgeItemDTO {
  const factory FridgeItemDTO({
    required String id,
    required String name,
    required String category,
    required int quantity,
    required DateTime timeStored,
    required DateTime bestBeforeDate,
    required String imageUrl,
  }) = _FridgeItemDTO;

  factory FridgeItemDTO.fromJson(Map<String, dynamic> json) =>
      _$FridgeItemDTOFromJson(json);

  factory FridgeItemDTO.fromFirestore(
      Map<String, dynamic> doc,
      String docId,
      ) {
    return FridgeItemDTO(
      id: docId,
      name: doc['name'] as String,
      category: doc['category'] as String,
      quantity: doc['quantity'] as int,
      timeStored: (doc['timeStored'] as Timestamp).toDate(),
      bestBeforeDate: (doc['bestBeforeDate'] as Timestamp).toDate(),
      imageUrl: doc['imageUrl'] as String,
    );
  }
}

extension FridgeItemDTOFirestore on FridgeItemDTO {
  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
      'category': category,
      'quantity': quantity,
      'timeStored': Timestamp.fromDate(timeStored),
      'bestBeforeDate': Timestamp.fromDate(bestBeforeDate),
      'imageUrl': imageUrl,
    };
  }
}