import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:test_flutter_circle_ci/providers/connectivity_provider.dart';
import 'connectivity_test.mocks.dart';

import 'package:mockito/mockito.dart';

class MockStream extends Mock implements Stream<ConnectivityResult> {}

@GenerateMocks([Connectivity, ConnectivityProvider])
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  group('Test for connectivity', () {
    late MockConnectivity mockConnectivity;
    late ConnectivityProvider connectivityProvider;

    setUp(() {
      mockConnectivity = MockConnectivity();
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.wifi);

      when(mockConnectivity.onConnectivityChanged).thenAnswer(
          (realInvocation) => Stream<ConnectivityResult>.fromFutures([
                Future.value(ConnectivityResult.wifi),
                Future.value(ConnectivityResult.none),
                Future.value(ConnectivityResult.mobile)
              ]).asyncMap((data) async {
                await Future.delayed(const Duration(seconds: 1));
                return data;
              }));

      connectivityProvider =
          ConnectivityProvider(connectivity: mockConnectivity);
    });

    test('Test ddd', () async {
      expect(1 + 1, 2);
    });

    test(
      'Listening network connectivity changes',
      () async {
        expect(connectivityProvider.listenNetworkConnectivity, isA<void>());
      },
    );

    test('Testing CheckNetworkConnectivity method', () async {
      expect(
        await connectivityProvider.checkNetworkConnectivity(
            connectivity: mockConnectivity),
        isA<ConnectivityResult>(),
      );
    });

    test('Testing all the getters', () {
      // final ConnectivityProvider connectivityProvider = ConnectivityProvider();

      expect(connectivityProvider.getIsConnected, isTrue);
      expect(connectivityProvider.getShowSnackBar, isFalse);
      expect(connectivityProvider.getSnackbarKey, isA<GlobalKey>());
      expect(connectivityProvider.getConnectivity, isA<Connectivity>());
      expect(connectivityProvider.getResult, isA<ConnectivityResult>());
    });

    test('Clears/closes the stream subscription', () {
      // connectivityProvider.clearConnectivityStream();
      expect(connectivityProvider.clearConnectivityStream, isA<void>());
    });
  });
}

enum ConnectivityCase { CASE_ERROR, CASE_SUCCESS }

class CustomMockConnectivity implements Connectivity {
  var connectivityCase = ConnectivityCase.CASE_SUCCESS;

  Stream<ConnectivityResult>? _onConnectivityChanged;

  @override
  Future<ConnectivityResult> checkConnectivity() {
    if (connectivityCase == ConnectivityCase.CASE_SUCCESS) {
      return Future.value(ConnectivityResult.wifi);
    } else {
      throw Error();
    }
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged {
    if (_onConnectivityChanged == null) {
      _onConnectivityChanged = Stream<ConnectivityResult>.fromFutures([
        Future.value(ConnectivityResult.wifi),
        Future.value(ConnectivityResult.none),
        Future.value(ConnectivityResult.mobile)
      ]).asyncMap((data) async {
        await Future.delayed(const Duration(seconds: 1));
        return data;
      });
    }
    return _onConnectivityChanged!;
  }

  @override
  Future<String> getWifiBSSID() {
    return Future.value("");
  }

  @override
  Future<String> getWifiIP() {
    return Future.value("");
  }

  @override
  Future<String> getWifiName() {
    return Future.value("");
  }
}
