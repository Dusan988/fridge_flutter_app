import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fridge_tracker/goods/dtos/fridge_item_dto.dart';
import 'package:injectable/injectable.dart';

abstract interface class GoodsRepository {
  Future<List<FridgeItemDTO>> fetchGoods({required String userId});

  Future<void> addGoodsItem(String userId, FridgeItemDTO item);

  Future<void> deleteGoodsItem(String userId, FridgeItemDTO item);
}
@Singleton(as: GoodsRepository)
class GoodsRepositoryImpl implements GoodsRepository {
  final FirebaseFirestore _firestore;

  GoodsRepositoryImpl({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<List<FridgeItemDTO>> fetchGoods({required String userId}) async {
     final querySnapshot = await _firestore
        .collection('users')
        .doc(userId)
        .collection('goods')
        .get();


     return querySnapshot.docs
         .map((doc) => FridgeItemDTO.fromFirestore(doc.data(), doc.id))
         .toList();
  }

  @override
  Future<void> deleteGoodsItem(String userId, FridgeItemDTO item) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('goods')
        .doc(item.id)
        .delete();
  }
  @override
  Future<void> addGoodsItem(String userId, FridgeItemDTO item) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('goods')
        .doc(item.id)
        .set(item.toFirestore());
  }
}
