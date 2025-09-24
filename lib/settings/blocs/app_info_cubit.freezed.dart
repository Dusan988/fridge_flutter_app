// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppInfoState _$AppInfoStateFromJson(Map<String, dynamic> json) {
  return _AppInfoState.fromJson(json);
}

/// @nodoc
mixin _$AppInfoState {
  String? get applicationVersion => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  /// Serializes this AppInfoState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppInfoStateCopyWith<AppInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoStateCopyWith<$Res> {
  factory $AppInfoStateCopyWith(
          AppInfoState value, $Res Function(AppInfoState) then) =
      _$AppInfoStateCopyWithImpl<$Res, AppInfoState>;
  @useResult
  $Res call({String? applicationVersion, bool loading});
}

/// @nodoc
class _$AppInfoStateCopyWithImpl<$Res, $Val extends AppInfoState>
    implements $AppInfoStateCopyWith<$Res> {
  _$AppInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationVersion = freezed,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      applicationVersion: freezed == applicationVersion
          ? _value.applicationVersion
          : applicationVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppInfoStateImplCopyWith<$Res>
    implements $AppInfoStateCopyWith<$Res> {
  factory _$$AppInfoStateImplCopyWith(
          _$AppInfoStateImpl value, $Res Function(_$AppInfoStateImpl) then) =
      __$$AppInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? applicationVersion, bool loading});
}

/// @nodoc
class __$$AppInfoStateImplCopyWithImpl<$Res>
    extends _$AppInfoStateCopyWithImpl<$Res, _$AppInfoStateImpl>
    implements _$$AppInfoStateImplCopyWith<$Res> {
  __$$AppInfoStateImplCopyWithImpl(
      _$AppInfoStateImpl _value, $Res Function(_$AppInfoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationVersion = freezed,
    Object? loading = null,
  }) {
    return _then(_$AppInfoStateImpl(
      applicationVersion: freezed == applicationVersion
          ? _value.applicationVersion
          : applicationVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppInfoStateImpl extends _AppInfoState {
  const _$AppInfoStateImpl({this.applicationVersion, this.loading = false})
      : super._();

  factory _$AppInfoStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppInfoStateImplFromJson(json);

  @override
  final String? applicationVersion;
  @override
  @JsonKey()
  final bool loading;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInfoStateImpl &&
            (identical(other.applicationVersion, applicationVersion) ||
                other.applicationVersion == applicationVersion) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, applicationVersion, loading);

  /// Create a copy of AppInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInfoStateImplCopyWith<_$AppInfoStateImpl> get copyWith =>
      __$$AppInfoStateImplCopyWithImpl<_$AppInfoStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppInfoStateImplToJson(
      this,
    );
  }
}

abstract class _AppInfoState extends AppInfoState {
  const factory _AppInfoState(
      {final String? applicationVersion,
      final bool loading}) = _$AppInfoStateImpl;
  const _AppInfoState._() : super._();

  factory _AppInfoState.fromJson(Map<String, dynamic> json) =
      _$AppInfoStateImpl.fromJson;

  @override
  String? get applicationVersion;
  @override
  bool get loading;

  /// Create a copy of AppInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppInfoStateImplCopyWith<_$AppInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
