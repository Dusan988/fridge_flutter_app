import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fridge_tracker/goods/dtos/fridge_item_dto.dart';
import 'package:fridge_tracker/goods/repositories/goods_repository.dart';
import 'package:injectable/injectable.dart';

part 'goods_state.dart';

part 'goods_cubit.freezed.dart';

@injectable
class GoodsCubit extends Cubit<GoodsState> {
  final GoodsRepository _repository;

  GoodsCubit(this._repository) : super(const GoodsState.initial());

  Future<void> fetchFridgeItems({required String userId}) async {
    emit(const GoodsState.loading());
    try {
      final items = await _repository.fetchGoods(userId: userId);
      emit(GoodsState.loaded(items));
    } catch (e) {
      emit(GoodsState.error(e.toString()));
    }
  }

  Future<void> addFridgeItem(String userId, FridgeItemDTO item) async {
    emit(const GoodsState.loading());
    try {
      state.map(
        initial: (_) => emit(GoodsState.added(item, [item])),
        loading: (_) => emit(GoodsState.added(item, [item])),
        loaded: (loadedState) {
          final updatedItems = List<FridgeItemDTO>.from(loadedState.items)
            ..add(item);
          emit(GoodsState.added(item, updatedItems));
        },
        added: (_) => emit(GoodsState.added(item, [item])),
        removed: (_) => emit(GoodsState.added(item, [item])),
        error: (_) => emit(GoodsState.added(item, [item])),
      );

      await _repository.addGoodsItem(userId, item);

      await fetchFridgeItems(userId: userId);
    } catch (e) {
      emit(GoodsState.error(e.toString()));
    }
  }

  Future<void> removeFridgeItem(String userId, FridgeItemDTO item) async {
    try {
      state.maybeMap(
        loaded: (loadedState) {
          final updatedItems = List<FridgeItemDTO>.from(loadedState.items)
            ..removeWhere((i) => i.id == item.id);
          emit(GoodsState.removed(item, updatedItems));
        },
        orElse: () {},
      );

      await _repository.deleteGoodsItem(userId, item);

      await fetchFridgeItems(userId: userId);
    } catch (e) {
      emit(GoodsState.error(e.toString()));
    }
  }
}
