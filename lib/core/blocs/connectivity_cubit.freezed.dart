// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
    required TResult Function() online,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? offline,
    TResult? Function()? online,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function()? online,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityStateOffline value) offline,
    required TResult Function(ConnectivityStateOnline value) online,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityStateOffline value)? offline,
    TResult? Function(ConnectivityStateOnline value)? online,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityStateOffline value)? offline,
    TResult Function(ConnectivityStateOnline value)? online,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res, ConnectivityState>;
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res, $Val extends ConnectivityState>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectivityState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConnectivityStateOfflineImplCopyWith<$Res> {
  factory _$$ConnectivityStateOfflineImplCopyWith(
          _$ConnectivityStateOfflineImpl value,
          $Res Function(_$ConnectivityStateOfflineImpl) then) =
      __$$ConnectivityStateOfflineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectivityStateOfflineImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res,
        _$ConnectivityStateOfflineImpl>
    implements _$$ConnectivityStateOfflineImplCopyWith<$Res> {
  __$$ConnectivityStateOfflineImplCopyWithImpl(
      _$ConnectivityStateOfflineImpl _value,
      $Res Function(_$ConnectivityStateOfflineImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectivityState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectivityStateOfflineImpl extends ConnectivityStateOffline {
  const _$ConnectivityStateOfflineImpl() : super._();

  @override
  String toString() {
    return 'ConnectivityState.offline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityStateOfflineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
    required TResult Function() online,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? offline,
    TResult? Function()? online,
  }) {
    return offline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function()? online,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityStateOffline value) offline,
    required TResult Function(ConnectivityStateOnline value) online,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityStateOffline value)? offline,
    TResult? Function(ConnectivityStateOnline value)? online,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityStateOffline value)? offline,
    TResult Function(ConnectivityStateOnline value)? online,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class ConnectivityStateOffline extends ConnectivityState {
  const factory ConnectivityStateOffline() = _$ConnectivityStateOfflineImpl;
  const ConnectivityStateOffline._() : super._();
}

/// @nodoc
abstract class _$$ConnectivityStateOnlineImplCopyWith<$Res> {
  factory _$$ConnectivityStateOnlineImplCopyWith(
          _$ConnectivityStateOnlineImpl value,
          $Res Function(_$ConnectivityStateOnlineImpl) then) =
      __$$ConnectivityStateOnlineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectivityStateOnlineImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$ConnectivityStateOnlineImpl>
    implements _$$ConnectivityStateOnlineImplCopyWith<$Res> {
  __$$ConnectivityStateOnlineImplCopyWithImpl(
      _$ConnectivityStateOnlineImpl _value,
      $Res Function(_$ConnectivityStateOnlineImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectivityState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectivityStateOnlineImpl extends ConnectivityStateOnline {
  const _$ConnectivityStateOnlineImpl() : super._();

  @override
  String toString() {
    return 'ConnectivityState.online()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityStateOnlineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
    required TResult Function() online,
  }) {
    return online();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? offline,
    TResult? Function()? online,
  }) {
    return online?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function()? online,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityStateOffline value) offline,
    required TResult Function(ConnectivityStateOnline value) online,
  }) {
    return online(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityStateOffline value)? offline,
    TResult? Function(ConnectivityStateOnline value)? online,
  }) {
    return online?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityStateOffline value)? offline,
    TResult Function(ConnectivityStateOnline value)? online,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online(this);
    }
    return orElse();
  }
}

abstract class ConnectivityStateOnline extends ConnectivityState {
  const factory ConnectivityStateOnline() = _$ConnectivityStateOnlineImpl;
  const ConnectivityStateOnline._() : super._();
}
