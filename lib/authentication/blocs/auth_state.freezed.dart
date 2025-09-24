// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDTO user) signedIn,
    required TResult Function(UserDTO user) signedUp,
    required TResult Function() guest,
    required TResult Function() signedOut,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDTO user)? signedIn,
    TResult? Function(UserDTO user)? signedUp,
    TResult? Function()? guest,
    TResult? Function()? signedOut,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDTO user)? signedIn,
    TResult Function(UserDTO user)? signedUp,
    TResult Function()? guest,
    TResult Function()? signedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(AuthStateSignedUp value) signedUp,
    required TResult Function(AuthStateGuest value) guest,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(AuthStateSignedUp value)? signedUp,
    TResult? Function(AuthStateGuest value)? guest,
    TResult? Function(AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(AuthStateSignedUp value)? signedUp,
    TResult Function(AuthStateGuest value)? guest,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthStateInitialImplCopyWith<$Res> {
  factory _$$AuthStateInitialImplCopyWith(_$AuthStateInitialImpl value,
          $Res Function(_$AuthStateInitialImpl) then) =
      __$$AuthStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateInitialImpl>
    implements _$$AuthStateInitialImplCopyWith<$Res> {
  __$$AuthStateInitialImplCopyWithImpl(_$AuthStateInitialImpl _value,
      $Res Function(_$AuthStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthStateInitialImpl extends AuthStateInitial {
  const _$AuthStateInitialImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDTO user) signedIn,
    required TResult Function(UserDTO user) signedUp,
    required TResult Function() guest,
    required TResult Function() signedOut,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDTO user)? signedIn,
    TResult? Function(UserDTO user)? signedUp,
    TResult? Function()? guest,
    TResult? Function()? signedOut,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDTO user)? signedIn,
    TResult Function(UserDTO user)? signedUp,
    TResult Function()? guest,
    TResult Function()? signedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(AuthStateSignedUp value) signedUp,
    required TResult Function(AuthStateGuest value) guest,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(AuthStateSignedUp value)? signedUp,
    TResult? Function(AuthStateGuest value)? guest,
    TResult? Function(AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(AuthStateSignedUp value)? signedUp,
    TResult Function(AuthStateGuest value)? guest,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthStateInitial extends AuthState {
  const factory AuthStateInitial() = _$AuthStateInitialImpl;
  const AuthStateInitial._() : super._();
}

/// @nodoc
abstract class _$$AuthStateLoadingImplCopyWith<$Res> {
  factory _$$AuthStateLoadingImplCopyWith(_$AuthStateLoadingImpl value,
          $Res Function(_$AuthStateLoadingImpl) then) =
      __$$AuthStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoadingImpl>
    implements _$$AuthStateLoadingImplCopyWith<$Res> {
  __$$AuthStateLoadingImplCopyWithImpl(_$AuthStateLoadingImpl _value,
      $Res Function(_$AuthStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthStateLoadingImpl extends AuthStateLoading {
  const _$AuthStateLoadingImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDTO user) signedIn,
    required TResult Function(UserDTO user) signedUp,
    required TResult Function() guest,
    required TResult Function() signedOut,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDTO user)? signedIn,
    TResult? Function(UserDTO user)? signedUp,
    TResult? Function()? guest,
    TResult? Function()? signedOut,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDTO user)? signedIn,
    TResult Function(UserDTO user)? signedUp,
    TResult Function()? guest,
    TResult Function()? signedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(AuthStateSignedUp value) signedUp,
    required TResult Function(AuthStateGuest value) guest,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(AuthStateSignedUp value)? signedUp,
    TResult? Function(AuthStateGuest value)? guest,
    TResult? Function(AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(AuthStateSignedUp value)? signedUp,
    TResult Function(AuthStateGuest value)? guest,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading extends AuthState {
  const factory AuthStateLoading() = _$AuthStateLoadingImpl;
  const AuthStateLoading._() : super._();
}

/// @nodoc
abstract class _$$AuthStateSignedInImplCopyWith<$Res> {
  factory _$$AuthStateSignedInImplCopyWith(_$AuthStateSignedInImpl value,
          $Res Function(_$AuthStateSignedInImpl) then) =
      __$$AuthStateSignedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDTO user});

  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthStateSignedInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateSignedInImpl>
    implements _$$AuthStateSignedInImplCopyWith<$Res> {
  __$$AuthStateSignedInImplCopyWithImpl(_$AuthStateSignedInImpl _value,
      $Res Function(_$AuthStateSignedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthStateSignedInImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res> get user {
    return $UserDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthStateSignedInImpl extends AuthStateSignedIn {
  const _$AuthStateSignedInImpl(this.user) : super._();

  @override
  final UserDTO user;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateSignedInImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateSignedInImplCopyWith<_$AuthStateSignedInImpl> get copyWith =>
      __$$AuthStateSignedInImplCopyWithImpl<_$AuthStateSignedInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDTO user) signedIn,
    required TResult Function(UserDTO user) signedUp,
    required TResult Function() guest,
    required TResult Function() signedOut,
    required TResult Function(String error) error,
  }) {
    return signedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDTO user)? signedIn,
    TResult? Function(UserDTO user)? signedUp,
    TResult? Function()? guest,
    TResult? Function()? signedOut,
    TResult? Function(String error)? error,
  }) {
    return signedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDTO user)? signedIn,
    TResult Function(UserDTO user)? signedUp,
    TResult Function()? guest,
    TResult Function()? signedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(AuthStateSignedUp value) signedUp,
    required TResult Function(AuthStateGuest value) guest,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(AuthStateSignedUp value)? signedUp,
    TResult? Function(AuthStateGuest value)? guest,
    TResult? Function(AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(AuthStateSignedUp value)? signedUp,
    TResult Function(AuthStateGuest value)? guest,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class AuthStateSignedIn extends AuthState {
  const factory AuthStateSignedIn(final UserDTO user) = _$AuthStateSignedInImpl;
  const AuthStateSignedIn._() : super._();

  UserDTO get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateSignedInImplCopyWith<_$AuthStateSignedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateSignedUpImplCopyWith<$Res> {
  factory _$$AuthStateSignedUpImplCopyWith(_$AuthStateSignedUpImpl value,
          $Res Function(_$AuthStateSignedUpImpl) then) =
      __$$AuthStateSignedUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDTO user});

  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthStateSignedUpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateSignedUpImpl>
    implements _$$AuthStateSignedUpImplCopyWith<$Res> {
  __$$AuthStateSignedUpImplCopyWithImpl(_$AuthStateSignedUpImpl _value,
      $Res Function(_$AuthStateSignedUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthStateSignedUpImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res> get user {
    return $UserDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthStateSignedUpImpl extends AuthStateSignedUp {
  const _$AuthStateSignedUpImpl(this.user) : super._();

  @override
  final UserDTO user;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateSignedUpImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateSignedUpImplCopyWith<_$AuthStateSignedUpImpl> get copyWith =>
      __$$AuthStateSignedUpImplCopyWithImpl<_$AuthStateSignedUpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDTO user) signedIn,
    required TResult Function(UserDTO user) signedUp,
    required TResult Function() guest,
    required TResult Function() signedOut,
    required TResult Function(String error) error,
  }) {
    return signedUp(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDTO user)? signedIn,
    TResult? Function(UserDTO user)? signedUp,
    TResult? Function()? guest,
    TResult? Function()? signedOut,
    TResult? Function(String error)? error,
  }) {
    return signedUp?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDTO user)? signedIn,
    TResult Function(UserDTO user)? signedUp,
    TResult Function()? guest,
    TResult Function()? signedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (signedUp != null) {
      return signedUp(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(AuthStateSignedUp value) signedUp,
    required TResult Function(AuthStateGuest value) guest,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return signedUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(AuthStateSignedUp value)? signedUp,
    TResult? Function(AuthStateGuest value)? guest,
    TResult? Function(AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) {
    return signedUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(AuthStateSignedUp value)? signedUp,
    TResult Function(AuthStateGuest value)? guest,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (signedUp != null) {
      return signedUp(this);
    }
    return orElse();
  }
}

abstract class AuthStateSignedUp extends AuthState {
  const factory AuthStateSignedUp(final UserDTO user) = _$AuthStateSignedUpImpl;
  const AuthStateSignedUp._() : super._();

  UserDTO get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateSignedUpImplCopyWith<_$AuthStateSignedUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateGuestImplCopyWith<$Res> {
  factory _$$AuthStateGuestImplCopyWith(_$AuthStateGuestImpl value,
          $Res Function(_$AuthStateGuestImpl) then) =
      __$$AuthStateGuestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateGuestImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateGuestImpl>
    implements _$$AuthStateGuestImplCopyWith<$Res> {
  __$$AuthStateGuestImplCopyWithImpl(
      _$AuthStateGuestImpl _value, $Res Function(_$AuthStateGuestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthStateGuestImpl extends AuthStateGuest {
  const _$AuthStateGuestImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateGuestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDTO user) signedIn,
    required TResult Function(UserDTO user) signedUp,
    required TResult Function() guest,
    required TResult Function() signedOut,
    required TResult Function(String error) error,
  }) {
    return guest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDTO user)? signedIn,
    TResult? Function(UserDTO user)? signedUp,
    TResult? Function()? guest,
    TResult? Function()? signedOut,
    TResult? Function(String error)? error,
  }) {
    return guest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDTO user)? signedIn,
    TResult Function(UserDTO user)? signedUp,
    TResult Function()? guest,
    TResult Function()? signedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(AuthStateSignedUp value) signedUp,
    required TResult Function(AuthStateGuest value) guest,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return guest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(AuthStateSignedUp value)? signedUp,
    TResult? Function(AuthStateGuest value)? guest,
    TResult? Function(AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) {
    return guest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(AuthStateSignedUp value)? signedUp,
    TResult Function(AuthStateGuest value)? guest,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest(this);
    }
    return orElse();
  }
}

abstract class AuthStateGuest extends AuthState {
  const factory AuthStateGuest() = _$AuthStateGuestImpl;
  const AuthStateGuest._() : super._();
}

/// @nodoc
abstract class _$$AuthStateSignedOutImplCopyWith<$Res> {
  factory _$$AuthStateSignedOutImplCopyWith(_$AuthStateSignedOutImpl value,
          $Res Function(_$AuthStateSignedOutImpl) then) =
      __$$AuthStateSignedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateSignedOutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateSignedOutImpl>
    implements _$$AuthStateSignedOutImplCopyWith<$Res> {
  __$$AuthStateSignedOutImplCopyWithImpl(_$AuthStateSignedOutImpl _value,
      $Res Function(_$AuthStateSignedOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthStateSignedOutImpl extends AuthStateSignedOut {
  const _$AuthStateSignedOutImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateSignedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDTO user) signedIn,
    required TResult Function(UserDTO user) signedUp,
    required TResult Function() guest,
    required TResult Function() signedOut,
    required TResult Function(String error) error,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDTO user)? signedIn,
    TResult? Function(UserDTO user)? signedUp,
    TResult? Function()? guest,
    TResult? Function()? signedOut,
    TResult? Function(String error)? error,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDTO user)? signedIn,
    TResult Function(UserDTO user)? signedUp,
    TResult Function()? guest,
    TResult Function()? signedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(AuthStateSignedUp value) signedUp,
    required TResult Function(AuthStateGuest value) guest,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(AuthStateSignedUp value)? signedUp,
    TResult? Function(AuthStateGuest value)? guest,
    TResult? Function(AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(AuthStateSignedUp value)? signedUp,
    TResult Function(AuthStateGuest value)? guest,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class AuthStateSignedOut extends AuthState {
  const factory AuthStateSignedOut() = _$AuthStateSignedOutImpl;
  const AuthStateSignedOut._() : super._();
}

/// @nodoc
abstract class _$$AuthStateErrorImplCopyWith<$Res> {
  factory _$$AuthStateErrorImplCopyWith(_$AuthStateErrorImpl value,
          $Res Function(_$AuthStateErrorImpl) then) =
      __$$AuthStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AuthStateErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateErrorImpl>
    implements _$$AuthStateErrorImplCopyWith<$Res> {
  __$$AuthStateErrorImplCopyWithImpl(
      _$AuthStateErrorImpl _value, $Res Function(_$AuthStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthStateErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateErrorImpl extends AuthStateError {
  const _$AuthStateErrorImpl(this.error) : super._();

  @override
  final String error;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateErrorImplCopyWith<_$AuthStateErrorImpl> get copyWith =>
      __$$AuthStateErrorImplCopyWithImpl<_$AuthStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDTO user) signedIn,
    required TResult Function(UserDTO user) signedUp,
    required TResult Function() guest,
    required TResult Function() signedOut,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDTO user)? signedIn,
    TResult? Function(UserDTO user)? signedUp,
    TResult? Function()? guest,
    TResult? Function()? signedOut,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDTO user)? signedIn,
    TResult Function(UserDTO user)? signedUp,
    TResult Function()? guest,
    TResult Function()? signedOut,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSignedIn value) signedIn,
    required TResult Function(AuthStateSignedUp value) signedUp,
    required TResult Function(AuthStateGuest value) guest,
    required TResult Function(AuthStateSignedOut value) signedOut,
    required TResult Function(AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSignedIn value)? signedIn,
    TResult? Function(AuthStateSignedUp value)? signedUp,
    TResult? Function(AuthStateGuest value)? guest,
    TResult? Function(AuthStateSignedOut value)? signedOut,
    TResult? Function(AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSignedIn value)? signedIn,
    TResult Function(AuthStateSignedUp value)? signedUp,
    TResult Function(AuthStateGuest value)? guest,
    TResult Function(AuthStateSignedOut value)? signedOut,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthStateError extends AuthState {
  const factory AuthStateError(final String error) = _$AuthStateErrorImpl;
  const AuthStateError._() : super._();

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateErrorImplCopyWith<_$AuthStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
