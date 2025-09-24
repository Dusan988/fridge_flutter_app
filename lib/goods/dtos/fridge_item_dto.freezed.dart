// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fridge_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FridgeItemDTO _$FridgeItemDTOFromJson(Map<String, dynamic> json) {
  return _FridgeItemDTO.fromJson(json);
}

/// @nodoc
mixin _$FridgeItemDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  DateTime get timeStored => throw _privateConstructorUsedError;
  DateTime get bestBeforeDate => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this FridgeItemDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FridgeItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FridgeItemDTOCopyWith<FridgeItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FridgeItemDTOCopyWith<$Res> {
  factory $FridgeItemDTOCopyWith(
          FridgeItemDTO value, $Res Function(FridgeItemDTO) then) =
      _$FridgeItemDTOCopyWithImpl<$Res, FridgeItemDTO>;
  @useResult
  $Res call(
      {String id,
      String name,
      String category,
      int quantity,
      DateTime timeStored,
      DateTime bestBeforeDate,
      String imageUrl});
}

/// @nodoc
class _$FridgeItemDTOCopyWithImpl<$Res, $Val extends FridgeItemDTO>
    implements $FridgeItemDTOCopyWith<$Res> {
  _$FridgeItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FridgeItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? quantity = null,
    Object? timeStored = null,
    Object? bestBeforeDate = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      timeStored: null == timeStored
          ? _value.timeStored
          : timeStored // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bestBeforeDate: null == bestBeforeDate
          ? _value.bestBeforeDate
          : bestBeforeDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FridgeItemDTOImplCopyWith<$Res>
    implements $FridgeItemDTOCopyWith<$Res> {
  factory _$$FridgeItemDTOImplCopyWith(
          _$FridgeItemDTOImpl value, $Res Function(_$FridgeItemDTOImpl) then) =
      __$$FridgeItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String category,
      int quantity,
      DateTime timeStored,
      DateTime bestBeforeDate,
      String imageUrl});
}

/// @nodoc
class __$$FridgeItemDTOImplCopyWithImpl<$Res>
    extends _$FridgeItemDTOCopyWithImpl<$Res, _$FridgeItemDTOImpl>
    implements _$$FridgeItemDTOImplCopyWith<$Res> {
  __$$FridgeItemDTOImplCopyWithImpl(
      _$FridgeItemDTOImpl _value, $Res Function(_$FridgeItemDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of FridgeItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? quantity = null,
    Object? timeStored = null,
    Object? bestBeforeDate = null,
    Object? imageUrl = null,
  }) {
    return _then(_$FridgeItemDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      timeStored: null == timeStored
          ? _value.timeStored
          : timeStored // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bestBeforeDate: null == bestBeforeDate
          ? _value.bestBeforeDate
          : bestBeforeDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FridgeItemDTOImpl implements _FridgeItemDTO {
  const _$FridgeItemDTOImpl(
      {required this.id,
      required this.name,
      required this.category,
      required this.quantity,
      required this.timeStored,
      required this.bestBeforeDate,
      required this.imageUrl});

  factory _$FridgeItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$FridgeItemDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String category;
  @override
  final int quantity;
  @override
  final DateTime timeStored;
  @override
  final DateTime bestBeforeDate;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'FridgeItemDTO(id: $id, name: $name, category: $category, quantity: $quantity, timeStored: $timeStored, bestBeforeDate: $bestBeforeDate, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FridgeItemDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.timeStored, timeStored) ||
                other.timeStored == timeStored) &&
            (identical(other.bestBeforeDate, bestBeforeDate) ||
                other.bestBeforeDate == bestBeforeDate) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, category, quantity,
      timeStored, bestBeforeDate, imageUrl);

  /// Create a copy of FridgeItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FridgeItemDTOImplCopyWith<_$FridgeItemDTOImpl> get copyWith =>
      __$$FridgeItemDTOImplCopyWithImpl<_$FridgeItemDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FridgeItemDTOImplToJson(
      this,
    );
  }
}

abstract class _FridgeItemDTO implements FridgeItemDTO {
  const factory _FridgeItemDTO(
      {required final String id,
      required final String name,
      required final String category,
      required final int quantity,
      required final DateTime timeStored,
      required final DateTime bestBeforeDate,
      required final String imageUrl}) = _$FridgeItemDTOImpl;

  factory _FridgeItemDTO.fromJson(Map<String, dynamic> json) =
      _$FridgeItemDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get category;
  @override
  int get quantity;
  @override
  DateTime get timeStored;
  @override
  DateTime get bestBeforeDate;
  @override
  String get imageUrl;

  /// Create a copy of FridgeItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FridgeItemDTOImplCopyWith<_$FridgeItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
