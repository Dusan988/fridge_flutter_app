import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fridge_tracker/authentication/dtos/user.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthStateInitial;

  const factory AuthState.loading() = AuthStateLoading;

  const factory AuthState.signedIn(UserDTO user) = AuthStateSignedIn;
  const factory AuthState.signedUp(UserDTO user) = AuthStateSignedUp;
  const factory AuthState.guest() = AuthStateGuest;

  const factory AuthState.signedOut() = AuthStateSignedOut;

  const factory AuthState.error(String error) = AuthStateError;

  const AuthState._();

  @override
  String toString() {
    return ' | ${map(
      initial: (_) => 'Initial',
      signedIn: (_) => 'Signed in',
      signedOut: (_) => 'Signed out',
      loading: (_) => 'Loading',
      error: (_) => 'Error',
      guest: (_) => 'Guest',
      signedUp: (_) => 'Signed up',
    )}';
  }}