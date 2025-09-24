import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_state.freezed.dart';

@freezed
class PermissionState with _$PermissionState {
  const factory PermissionState.initial() = _Initial;
  const factory PermissionState.granted() = _Granted;
  const factory PermissionState.denied() = _Denied;
  const factory PermissionState.permanentlyDenied() = _PermanentlyDenied;
}
