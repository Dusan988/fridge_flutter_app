import 'dart:async';
import 'dart:io';

import 'package:async/async.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

part 'connectivity_cubit.freezed.dart';

@injectable
class ConnectivityCubit extends Cubit<ConnectivityState> {
  StreamSubscription? _connectionSub;
  CancelableOperation<bool>? _internetConnectionCheckOperation;

  ConnectivityCubit() : super(const ConnectivityState.offline()) {
    _initSub();
  }

  void _initSub() => _connectionSub = Rx.merge([
    Stream.fromFuture(Connectivity().checkConnectivity()),
    Connectivity().onConnectivityChanged,
  ]).listen(_onConnectivityChanged);

  Future<void> _onConnectivityChanged(ConnectivityResult result) async {
    unawaited(_internetConnectionCheckOperation?.cancel());

    if (result == ConnectivityResult.none) {
      return emit(const ConnectivityState.offline());
    }

    _internetConnectionCheckOperation =
        CancelableOperation.fromFuture(_checkInternetConnection());
    final hasInternetConnection =
    await _internetConnectionCheckOperation!.value;
    emit(
      hasInternetConnection
          ? const ConnectivityState.online()
          : const ConnectivityState.offline(),
    );
  }

  Future<bool> _checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');

      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  @override
  Future<void> close() {
    _connectionSub?.cancel();
    _internetConnectionCheckOperation?.cancel();

    return super.close();
  }
}

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.offline() = ConnectivityStateOffline;
  const factory ConnectivityState.online() = ConnectivityStateOnline;

  const ConnectivityState._();

  bool get isOnline => when(online: () => true, offline: () => false);
}
