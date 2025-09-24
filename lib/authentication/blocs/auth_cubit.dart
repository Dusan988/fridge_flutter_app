import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fridge_tracker/authentication/blocs/auth_state.dart';
import 'package:fridge_tracker/authentication/dtos/user.dart';
import 'package:fridge_tracker/authentication/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(AuthRepository authRepository)
    : _authRepository = authRepository,
      super(const AuthStateInitial());
  final AuthRepository _authRepository;

  Future<void> signUp({required String email, required String password}) async {
    emit(AuthStateLoading());

    try {
      final user = await _authRepository.signUp(email, password);
      if (user != null) {
        final userDto = UserDTO.fromUser(user);
        emit(AuthState.signedUp(userDto));
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    emit(AuthStateLoading());
    try {
      final user = await _authRepository.signIn(email, password);
      if (user != null) {
        final userDto = UserDTO.fromUser(user!);
        emit(AuthState.signedIn(userDto));
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> signOut() async {
    emit(AuthStateLoading());
    try {
      await _authRepository.signOut();
      emit(AuthState.signedOut());
    } on FirebaseAuthException catch (e) {
      String message;
      switch (e.code) {
        case 'email-already-in-use':
          message = 'The account already exists for that email.';
          break;
        case 'weak-password':
          message = 'The password provided is too weak.';
          break;
        default:
          message = e.message ?? 'An unknown error occurred.';
      }
      emit(AuthState.error(message));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}
