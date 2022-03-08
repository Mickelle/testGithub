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
      // mockConnectivityProvider = MockConnectivityProvider();
      connectivityProvider =
          ConnectivityProvider(connectivity: mockConnectivity);
    });

    test('Test ddd', () async {
      expect(1 + 1, 2);
    });
    // test(
    //   'Listening network connectivity changes',
    //   () async {
    //     expect(connectivityProvider.listenNetworkConnectivity, isA<void>());
    //   },
    // );

    test('Testing CheckNetworkConnectivity method', () async {
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.wifi);
      expect(
        await connectivityProvider.checkNetworkConnectivity(
            connectivity: mockConnectivity),
        isA<ConnectivityResult>(),
      );
    });

    // test('Testing all the getters', () {
    //   final ConnectivityProvider connectivityProvider = ConnectivityProvider();

    //   expect(connectivityProvider.getIsConnected, isFalse);
    //   expect(connectivityProvider.getShowSnackBar, isFalse);
    //   expect(connectivityProvider.getSnackbarKey, isA<GlobalKey>());
    //   expect(connectivityProvider.getConnectivity, isA<Connectivity>());
    //   expect(connectivityProvider.getResult, isA<ConnectivityResult>());
    // });

    // test('Clears/closes the stream subscription', () {
    //   connectivityProvider.clearConnectivityStream();
    //   expect(connectivityProvider.clearConnectivityStream, isA<void>());
    // });
  });
}
