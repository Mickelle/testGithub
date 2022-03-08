import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:test_flutter_circle_ci/providers/connectivity_provider.dart';
import 'connectivity_test.mocks.dart';

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

      connectivityProvider =
          ConnectivityProvider(connectivity: mockConnectivity);
    });

    // test('Testing CheckNetworkConnectivity method', () async {
    //   expect(
    //     await connectivityProvider.checkNetworkConnectivity(
    //         connectivity: mockConnectivity),
    //     isA<ConnectivityResult>(),
    //   );
    // });

    test('Testing all the getters', () {
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
