import 'package:flutter/material.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import './../../lib/providers/connectivity_provider.dart';
import 'connectivity_test.mocks.dart';

@GenerateMocks([Connectivity, ConnectivityProvider])
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  group('Test for connectivity', () {
    late MockConnectivity mockConnectivity;
    // late MockConnectivityProvider mockConnectivityProvider;
    late ConnectivityProvider connectivityProvider;

    setUp(() {
      // mockConnectivity = MockConnectivity();
      // mockConnectivityProvider = MockConnectivityProvider();
      connectivityProvider = ConnectivityProvider();
    });

    test(
      'Listening network connectivity changes',
      () async {
        expect(connectivityProvider.listenNetworkConnectivity, isA<void>());
      },
    );

    // test('Testing CheckNetworkConnectivity method', () async {
    //   when(mockConnectivity.checkConnectivity())
    //       .thenAnswer((_) async => ConnectivityResult.wifi);
    //   expect(
    //     await connectivityProvider.checkNetworkConnectivity(),
    //     isA<ConnectivityResult>(),
    //   );
    // });

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