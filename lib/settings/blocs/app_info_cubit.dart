import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../repositories/settings_repository.dart';

part 'app_info_cubit.freezed.dart';
part 'app_info_cubit.g.dart';

@injectable
class AppInfoCubit extends Cubit<AppInfoState> {
  AppInfoCubit({
    required this.settingsRepository,
  }) : super(const AppInfoState());

  final SettingsRepository settingsRepository;

  Future<void> getAppInfo() async {
    emit(state.copyWith(loading: true));

    final String? appVersion = await settingsRepository.getApplicationVersion();
    emit(state.copyWith(
      applicationVersion: appVersion??'1.0.0',
      loading: false,
    ));
  }
}

/// [AppInfoCubit]'s state.
@freezed
class AppInfoState with _$AppInfoState {
  /// Create a [AppInfoState].
  const factory AppInfoState({
    String? applicationVersion,
    @Default(false) bool loading,
  }) = _AppInfoState;

  const AppInfoState._();

  /// Deserialize state object from json
  factory AppInfoState.fromJson(Map<String, dynamic> json) =>
      _$AppInfoStateFromJson(json);

  @override
  String toString() => '''
  | applicationVersion: $applicationVersion
  | loading : $loading
  }
  ''';
}
