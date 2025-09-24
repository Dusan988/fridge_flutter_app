part of 'goods_cubit.dart';

@freezed
class GoodsState with _$GoodsState {
  const factory GoodsState.initial() = _Initial;
  const factory GoodsState.loading() = _Loading;
  const factory GoodsState.loaded(List<FridgeItemDTO> items) = _Loaded;
  const factory GoodsState.added(FridgeItemDTO item, List<FridgeItemDTO> items) = _Added;
  const factory GoodsState.removed(FridgeItemDTO item, List<FridgeItemDTO> items) = _Removed;
  const factory GoodsState.error(String message) = _Error;
}