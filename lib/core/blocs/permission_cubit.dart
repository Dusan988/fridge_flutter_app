import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'permission_state.dart';

@injectable
class PermissionCubit extends Cubit<PermissionState> {
  PermissionCubit() : super(const PermissionState.initial());

  Future<void> requestGalleryPermission() async {
    final status = await Permission.photos.request();

    if (status.isGranted) {
      emit(const PermissionState.granted());
    } else if (status.isDenied) {
      emit(const PermissionState.denied());
    } else if (status.isPermanentlyDenied) {
      emit(const PermissionState.permanentlyDenied());
      openAppSettings();
    }
  }
}